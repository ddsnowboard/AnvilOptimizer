import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'items.dart';
import 'calc.dart';
import 'enchantments.dart';
import 'enchant_component.dart';
import 'DynamicEnchantment.dart';

@Component(
    selector: 'tool-component',
    templateUrl: 'tool_component.html',
    directives: [coreDirectives, formDirectives, EnchantComponent],
    providers: [FORM_PROVIDERS],
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
    enchantments.clear();
    _toolName = newName;
  }

  // I don't actually know if this works.
  String damageState = "Undamaged";
  bool get isDamaged => damageState == "Damaged";
  int priorWork = 0;
  List<DynamicEnchantment> enchantments = [];
  ToolComponent() {
    toolName = getTypeNames()[0];
  }

  List<String> getTypeNames() {
    return allItems;
  }

  void addEnchantment() {
    String startingEnchantment = allEnchantmentsConstructed
        .firstWhere((e) => e.compatibleItems.contains(toolName))
        .fullName;
    enchantments.add(DynamicEnchantment(startingEnchantment, 1));
  }

  Set<String> compatibilityListByName(String name) {
    var e = allEnchantmentsConstructed.firstWhere((e) => e.fullName == name);
    return e.compatibleItems;
  }

  void emit() {
      for(var e in enchantments) {
          print("${e.enchant} ${e.level}");
      }
  }

  void removeEnchant(int idx) {
      enchantments.removeAt(idx);
  }
}
