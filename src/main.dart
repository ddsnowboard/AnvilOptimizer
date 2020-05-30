import 'enchantments.dart';
import 'items.dart';
import "dart:math";

void main() {
  var target = Sword(0, false, <Enchantment>{Smite(3)});
  var sacrifice = Book(1, false, <Enchantment>{Unbreaking(3)});
  var output = Sword(1, false, <Enchantment>{Smite(3), Unbreaking(3)});
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
  bool hasClashingEnchantment(Enchantable tool) {
    final List<Set<Symbol>> clashingSets = [
      <Symbol>{
        Sharpness(1).typeId,
        Smite(1).typeId,
        BaneofArthropods(1).typeId
      },
      <Symbol>{Fortune(1).typeId, SilkTouch(1).typeId},
      <Symbol>{
        Protection(1).typeId,
        FireProtection(1).typeId,
        BlastProtection(1).typeId,
        ProjectileProtection(1).typeId
      },
      <Symbol>{DepthStrider(1).typeId, FrostWalker(1).typeId},
      <Symbol>{Infinity(1).typeId, Mending(1).typeId},
      <Symbol>{Multishot(1).typeId, Piercing(1).typeId},
      <Symbol>{Loyalty(1).typeId, Riptide(1).typeId},
      <Symbol>{Channeling(1).typeId, Riptide(1).typeId}
    ];
    Set<Symbol> intersectingSet = <Symbol>{this.typeId}
        .union(tool.enchantments.map((e) => e.typeId).toSet());
    for (final cset in clashingSets) {
      if (cset.intersection(intersectingSet).length >= 2) return true;
    }
    return false;
  }

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
    if (!enchant.applicable(target)) {
      continue;
    } else if(enchant.hasClashingEnchantment(target)) {
        out += 1;
    } else {
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
