from urllib import request
import operator
from functools import reduce
from string import Template
from html import parser

class NothingDoer:
    def handle_data(self, _):
        pass
    def handle_starttag(self, _, __):
        pass

class NameReader:
    def __init__(self):
        self.name = None

    def handle_starttag(self, tag, attrs):
        if tag == "a" and "title" in attrs and self.name is None:
            self.name = attrs["title"]

    def handle_data(self, data):
        pass

    def __repr__(self):
        return str(self.name)

    def get(self):
        return self.name

class MaxLevelReader:
    def __init__(self):
        self.max_level = None

    def handle_starttag(self, tag, attrs):
        raise RuntimeError("MaxLevelReader was only expecting a max level, no open tags")

    def handle_data(self, data):
        roman_numerals = {"I": 1,
                          "II": 2,
                          "III": 3,
                          "IV": 4,
                          "V": 5}

        self.max_level = roman_numerals[data.strip()]

    def __repr__(self):
        return f"Max level: {self.max_level}"

    def get(self):
        return self.max_level

class CompatibilityReader:
    def __init__(self):
        self.compatible = set()

    def handle_starttag(self, tag, attrs):
        if "title" in attrs:
            self.compatible |= {attrs["title"].replace("Diamond ", "")}

    def handle_data(self, data):
        raise RuntimeError("CompatibilityReader was only expecting tags, no data")

    def __repr__(self):
        return f"Compatible with {','.join(self.compatible)}"

    def get(self):
        return self.compatible

class MultiplierReader:
    def __init__(self):
        self.multiplier = None

    def handle_starttag(self, tag, attrs):
        raise RuntimeError("MultiplierReader was only expecting a multiplier, no open tags")

    def handle_data(self, data):
        self.multiplier = int(data)

    def __repr__(self):
        return f"Multiplier: {self.multiplier}"

    def get(self):
        return self.multiplier



class EnchantmentTableParser(parser.HTMLParser):
    # This maps the column index to the class that handles data from that column
    index_mapping = {0: NothingDoer, 1: NameReader, 2: MaxLevelReader, 3: CompatibilityReader, 4: MultiplierReader, 5: MultiplierReader}
    def __init__(self):
        super().__init__()
        self.in_table = False
        self.col_index = 0
        self.in_data = False
        self.finished_rows = []
        self.current_row = {}
    def handle_starttag(self, tag, attrs):
        _attrs = attrs
        attrs = dict(attrs)
        if self.in_table and self.in_data:
            self.current_row[self.col_index].handle_starttag(tag, attrs)
        elif not self.in_table:
            if attrs.get('data-description', None) == "Enchantment cost multipliers":
                self.in_table = True
        elif tag == "tr":
            self.current_row = {}
            self.col_index = 0
        elif tag == "td":
            self.in_data = True
            self.current_row[self.col_index] = self.index_mapping[self.col_index]()

    def handle_endtag(self, tag):
        if tag == 'table' and self.in_table:
            self.in_table = False
        elif self.in_table and tag == "tr":
            if self.current_row:
                self.finished_rows.append(self.current_row)
        elif tag == "td":
            self.col_index += 1
            self.in_data = False

    def handle_data(self, data):
        if self.in_table and self.in_data:
            self.current_row[self.col_index].handle_data(data)

    def close(self):
        super().close()
        assert(self.current_row is self.finished_rows[-1])
        for row in self.finished_rows:
            del row[0] # We don't need to keep the NothingDoer

url = "https://minecraft.gamepedia.com/Anvil/Mechanics"

class Enchantment:
    def __init__(self, row_dict):
        self.name = row_dict[1].get()
        self.class_name = self.name.replace(" ", "")
        self.max_level = row_dict[2].get()
        self.compatible_items = row_dict[3].get()
        self.item_multiplier = row_dict[4].get()
        self.book_multiplier = row_dict[5].get()

    def class_string(self):
        template = Template("""
class $class_name extends Enchantment {
    final int level;
    final int bookMultiplier = $book_multiplier;
    final int toolMultiplier = $tool_multiplier;
    final int maxLevel = $max_level;
    final String fullName = "$name";
    bool compatible(Enchantable tool) {
        return $compatible_chain;
    }

    $class_name(this.level) {
        if(this.level > this.maxLevel) {
            throw LevelTooHighException();
        }
    }
}""")
        d = {"name": self.name, "class_name": self.class_name, "book_multiplier": self.book_multiplier, "tool_multiplier": self.item_multiplier,
             "max_level": self.max_level, "compatible_chain": " || ".join(f"tool is {other.replace(' ', '')}" for other in self.compatible_items)}
        return template.substitute(**d)


with request.urlopen(url) as rp:
    html = rp.read().decode("UTF-8")
    parser = EnchantmentTableParser()
    parser.feed(html)
    parser.close()
    enchantments = [Enchantment(row) for row in parser.finished_rows]
    with open("src/enchantments.dart", "w") as f:
        f.write("import 'main.dart';\n");
        f.write("import 'items.dart';\n");
        for e in enchantments:
            f.write(e.class_string())
        f.write(f"\nList<Type> enchantments = [{','.join(e.class_name for e in enchantments)}];\n");

    all_items = reduce(operator.or_, (e.compatible_items for e in enchantments))
    with open("src/items.dart", 'w') as f:
        f.write("import 'main.dart';\n")
        for item in all_items:
            f.write("""class {class_name} extends Enchantable {{
    final String fullName = '{name}';
    {class_name}(int priorWork, bool isDamaged, Set<Enchantment> enchantments) : super(priorWork, isDamaged, enchantments) {{
    }}
}}\n""".format(class_name=item.replace(" ", ""), name=item))

