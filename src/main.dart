import 'enchantments.dart';
import 'items.dart';
import "dart:math";

void main() {
  var target = Sword(0, false, <Enchantment>{Smite(3)});
  var sacrifice = Axe(0, false, <Enchantment>{CurseofVanishing(1)});
  var output = Sword(1, false, <Enchantment>{Smite(3), CurseofVanishing(1)});
  print(_computeCost(target, sacrifice, output));
}

class LevelTooHighException implements Exception {
  LevelTooHighException() {}
  String toString() =>
      "The given level is higher than the max level for this enchantment";
}

abstract class Enchantable {
  final int priorWork;
  final bool isDamaged;
  final Set<Enchantment> enchantments;
  String get fullName;
  Symbol get typeId;
  Enchantable(this.priorWork, this.isDamaged, this.enchantments) {}
  bool hasCompatibleEnchantment(Enchantment enchant) {
    for (final other in this.enchantments) {
      if (other.typeId == enchant.typeId) return true;
    }
    return false;
  }
}

abstract class Enchantment {
  int get bookMultiplier;
  int get toolMultiplier;
  int get level;
  int get maxLevel;
  String get fullName;
  Symbol get typeId;
  bool applicable(Enchantable tool);
  int getMultiplier(Enchantable whence) {
    if (whence is Book)
      return this.bookMultiplier;
    else
      return this.toolMultiplier;
  }
}

class EnchantOutput {
  final Enchantable output;
  final int cost;

  EnchantOutput(this.output, this.cost) {}
}

EnchantOutput combine(Enchantable target, Enchantable sacrifice) {
  var output = _computeOutput(target, sacrifice);
  var cost = _computeCost(target, sacrifice, output);
}

Enchantable _computeOutput(Enchantable target, Enchantable sacrifice) {}

int _computeCost(Enchantable target, Enchantable sacrifice,
    [Enchantable output]) {
  if (output == null) {
    output = _computeOutput(target, sacrifice);
  }
  return _priorWorkPenalty(target) +
      _priorWorkPenalty(sacrifice) +
      _repairCost(target) +
      _enchantmentCost(target, sacrifice, output);
}

int _priorWorkPenalty(Enchantable item) {
  return pow(2, item.priorWork) - 1;
}

int _repairCost(Enchantable item) {
  if (item.isDamaged)
    return 2;
  else
    return 0;
}

int _enchantmentCost(
    Enchantable target, Enchantable sacrifice, Enchantable output) {
  int out = 0;
  for (final enchant in sacrifice.enchantments) {
    if (!enchant.applicable(target))
      continue;
    else {
      Enchantment comboResult = _findEnchantOfType(output, enchant);
      out += comboResult.level * comboResult.getMultiplier(sacrifice);
    }
  }
  return out;
}

Enchantment _findEnchantOfType(Enchantable item, Enchantment other) {
  for (final e in item.enchantments) {
    if (e.typeId == other.typeId) {
      return e;
    }
  }
  return null;
}
