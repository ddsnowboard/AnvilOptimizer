import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'items.dart';
import 'calc.dart';
import 'enchantments.dart';
import 'enchant_component.dart';

@Component(
    selector: 'tool-component',
    templateUrl: 'tool_component.html',
    directives: [coreDirectives, formDirectives, EnchantComponent],
    styleUrls: ['tool_component.css'])
class ToolComponent {
  static final List<Enchantment> allEnchantmentsConstructed =
      allEnchantments.map((e) => constructEnchantment(e, 1)).toList();
  List<Enchantment> get possibleEnchantments => allEnchantmentsConstructed
      .where((e) => e.compatibleItems.contains(toolName))
      .toList();

  String _toolName;
  String get toolName => _toolName;
  String set toolName(String newName) {
    enchantments.retainWhere((e) => e.compatibleItems.contains(newName));
    _toolName = newName;
  }

  bool isDamaged = false;
  int priorWork = 0;
  List<Enchantment> enchantments = [];
  ToolComponent() {
    toolName = getTypeNames()[0];
  }

  List<String> getTypeNames() {
    return allItems;
  }

  void addEnchantment() {
    Enchantment startingEnchantment = allEnchantmentsConstructed
        .firstWhere((e) => e.compatibleItems.contains(toolName));
    enchantments.add(startingEnchantment.clone());
  }

  void setEnchant(int index, Enchantment e) {
    enchantments[index] = e;
    print(enchantments[index]);
  }
}
