import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'items.dart';
import 'calc.dart';
import 'enchantments.dart';
import 'enchant_component.dart';
import 'DynamicEnchantment.dart';
import 'DynamicEnchantable.dart';

@Component(
    selector: 'tool-component',
    templateUrl: 'tool_component.html',
    directives: [coreDirectives, formDirectives, EnchantComponent],
    styleUrls: ['tool_component.css'])
class ToolComponent {
  static final List<Enchantment> allEnchantmentsConstructed =
      allEnchantments.map((e) => constructEnchantment(e, 1)).toList();
  List<Enchantment> get possibleEnchantments => allEnchantmentsConstructed
      .where((e) => e.compatibleItems.contains(tool.toolName))
      .toList();

  @Input()
  DynamicEnchantable tool;

  ToolComponent() {}

  List<String> getTypeNames() {
    return allItems;
  }

  void addEnchantment() {
    String startingEnchantment = allEnchantmentsConstructed
        .firstWhere((e) => e.compatibleItems.contains(tool.toolName))
        .fullName;
    tool.enchantments.add(DynamicEnchantment(startingEnchantment, 1));
  }

  Set<String> compatibilityListByName(String name) {
    var e = allEnchantmentsConstructed.firstWhere((e) => e.fullName == name);
    return e.compatibleItems;
  }

  void emit() {
    print(tool.toolName);
    for (var e in tool.enchantments) {
      print("${e.enchant} ${e.level}");
    }
    print("Damaged?: ${tool.isDamaged}");
  }

  void removeEnchant(int idx) {
    tool.enchantments.removeAt(idx);
  }
}
