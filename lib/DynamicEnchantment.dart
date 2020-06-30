import 'calc.dart';
import 'enchantments.dart';
import 'dart:math';

class DynamicEnchantment {
  int _level;
  int get level => _level;
  set level(int newLevel) {
    if (newLevel != null) _level = newLevel;
  }

  String _enchant;
  String get enchant => _enchant;
  set enchant(String newEnchant) {
    var newMax = constructEnchantment(newEnchant, 1).maxLevel;
    level = min(level, newMax);
    _enchant = newEnchant;
  }

  DynamicEnchantment(this._enchant, this._level) {}
  Enchantment toEnchantment() {
    return constructEnchantment(enchant, level);
  }
}
