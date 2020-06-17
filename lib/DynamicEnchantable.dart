import 'calc.dart';
import 'DynamicEnchantment.dart';
import 'items.dart';

class DynamicEnchantable {
  List<DynamicEnchantment> enchantments;
  String _toolName;
  get toolName => _toolName;
  set toolName(String newName) {
    enchantments.clear();
    _toolName = newName;
  }

  String damageState;
  bool get isDamaged => damageState == "Damaged";
  int priorWork = 0;

  DynamicEnchantable(
      this._toolName, this.enchantments, this.priorWork, bool isDamaged) {
    if (isDamaged) {
      damageState = "Damaged";
    } else {
      damageState = "Undamaged";
    }
  }
  ConcreteEnchantable toEnchantable() {
    return constructTool(toolName, priorWork, isDamaged,
        enchantments.map((e) => e.toEnchantment()).toSet());
  }
}
