import 'enchantments.dart';
import 'items.dart';
import "dart:math";

void main() {
  var target = Sword(1, false, <Enchantment>{Smite(2)});
  var sacrifice = Sword(1, false, <Enchantment>{Smite(3), Unbreaking(3)});
  var output = Sword(2, false, <Enchantment>{Smite(3), Unbreaking(3)});
  print(_computeOutput(target, sacrifice));
  print(output);
}

class LevelTooHighException implements Exception {
  LevelTooHighException() {}
  String toString() =>
      "The given level is higher than the max level for this enchantment";
}

abstract class Enchantable {
  ConcreteEnchantable makeConcrete();
}

abstract class ConcreteEnchantable extends Enchantable {
  int priorWork;
  bool isDamaged;
  Set<Enchantment> enchantments;
  String get fullName;
  Symbol get typeId;
  ConcreteEnchantable(this.priorWork, this.isDamaged, this.enchantments) {}
  ConcreteEnchantable clone();
  ConcreteEnchantable makeConcrete() {
    return this;
  }

  Set<Enchantment> cloneEnchantments() {
    return this.enchantments.map((e) => e.clone()).toSet();
  }

  String toString() {
    var enchants = this.enchantments.map((e) => e.toString()).join(", ");
    return "${this.fullName} (${this.priorWork}): $enchants";
  }

  Enchantment getCompatibleEnchantment(Enchantment enchant) {
    for (final other in this.enchantments) {
      if (other.typeId == enchant.typeId) return other;
    }
    return null;
  }

  bool hasCompatibleEnchantment(Enchantment enchant) {
    return this.getCompatibleEnchantment(enchant) != null;
  }
}

abstract class Enchantment {
  int get bookMultiplier;
  int get toolMultiplier;
  int level;
  int get maxLevel;
  String get fullName;
  Symbol get typeId;
  int get hashCode => this.fullName.hashCode;
  Enchantment clone();
  String toString() {
    return "${this.fullName} ${this.level}";
  }

  Enchantment(this.level) {
    if (this.level > this.maxLevel) {
      throw LevelTooHighException();
    }
  }
  bool hasClashingEnchantment(ConcreteEnchantable tool) {
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

  bool applicable(ConcreteEnchantable tool);
  int getMultiplier(ConcreteEnchantable whence) {
    if (whence is Book)
      return this.bookMultiplier;
    else
      return this.toolMultiplier;
  }
}

class EnchantOutput {
  final ConcreteEnchantable output;
  final int cost;

  EnchantOutput(this.output, this.cost) {}
}

EnchantOutput combine(
    ConcreteEnchantable target, ConcreteEnchantable sacrifice) {
  var output = _computeOutput(target, sacrifice);
  var cost = _computeCost(target, sacrifice, output);
  return EnchantOutput(output, cost);
}

ConcreteEnchantable _computeOutput(
    ConcreteEnchantable target, ConcreteEnchantable sacrifice) {
  var out = target.clone();
  out.priorWork++;
  for (final enchant in sacrifice.enchantments) {
    if (out.hasCompatibleEnchantment(enchant)) {
      var compat = out.getCompatibleEnchantment(enchant);
      if (compat.level == enchant.level) {
        compat.level++;
      } else {
        compat.level = max(enchant.level, compat.level);
      }
    } else if (!enchant.hasClashingEnchantment(out)) {
      out.enchantments.add(enchant.clone());
    }
  }
  return out;
}

int _computeCost(ConcreteEnchantable target, ConcreteEnchantable sacrifice,
    [ConcreteEnchantable output]) {
  if (output == null) {
    output = _computeOutput(target, sacrifice);
  }
  return _priorWorkPenalty(target) +
      _priorWorkPenalty(sacrifice) +
      _repairCost(target) +
      _enchantmentCost(target, sacrifice, output);
}

int _priorWorkPenalty(ConcreteEnchantable item) {
  return pow(2, item.priorWork) - 1;
}

int _repairCost(ConcreteEnchantable item) {
  if (item.isDamaged)
    return 2;
  else
    return 0;
}

int _enchantmentCost(ConcreteEnchantable target, ConcreteEnchantable sacrifice,
    ConcreteEnchantable output) {
  int out = 0;
  for (final enchant in sacrifice.enchantments) {
    if (!enchant.applicable(target)) {
      continue;
    } else if (enchant.hasClashingEnchantment(target)) {
      out += 1;
    } else {
      Enchantment comboResult = _findEnchantOfType(output, enchant);
      out += comboResult.level * comboResult.getMultiplier(sacrifice);
    }
  }
  return out;
}

Enchantment _findEnchantOfType(ConcreteEnchantable item, Enchantment other) {
  for (final e in item.enchantments) {
    if (e.typeId == other.typeId) {
      return e;
    }
  }
  return null;
}

class EnchantOrdering {
    EnchantPairing lastPairing;
    EnchantOrdering(this.lastPairing);
}

class EnchantPairing extends Enchantable {
  Enchantable target;
  Enchantable sacrifice;
  EnchantPairing(this.target, this.sacrifice) {}
  ConcreteEnchantable makeConcrete() {
    return _computeOutput(
        this.target.makeConcrete(), this.sacrifice.makeConcrete());
  }
}

Set<EnchantOrdering> allOrderings(Set<Enchantable> enchantables) {
    // Nested for loops and recursion? 
}
