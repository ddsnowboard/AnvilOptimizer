import 'calc.dart';
import 'enchantments.dart';
import 'dart:math';

class DynamicEnchantment {
  int level;
  String _enchant;
  String get enchant => _enchant;
  String set enchant (String newEnchant) {
      var newMax = constructEnchantment(newEnchant, 1).maxLevel;
      level = min(level, newMax);
      _enchant = newEnchant;
  }
  DynamicEnchantment(this._enchant, this.level) {}
  Enchantment toEnchantment() {
    return constructEnchantment(enchant, level);
  }
}
