import 'enchantments.dart';
import 'items.dart';
import "dart:math";
import "dart:collection";

void main() {
  var orderings = allOrderings({
    Bow(0, true, {Power(4), Punch(2), Unbreaking(3)}),
    Book(0, false, {Infinity(1)}),
    Book(0, false, {Flame(1)}),
    Bow(0, false, {Power(3)}),
    Bow(0, false, {Power(3)}),
  });
  var p = EnchantOrdering(EnchantPairing(
      Book(0, false, {Mending(1)}), Book(1, false, {Looting(3)})));
  var q = EnchantOrdering(EnchantPairing(
      Book(0, false, {Mending(1)}),
      EnchantPairing(
          Book(0, false, {Looting(2)}), Book(0, false, {Looting(2)}))));
  print(orderings.length);
  var cheapest = orderings.reduce((o1, o2) {
    var c1 = o1.getCost();
    var c2 = o2.getCost();
    if (c1 < c2)
      return o1;
    else
      return o2;
  });
  print(cheapest);
}

EnchantOrdering cheapestOrdering(Set<ConcreteEnchantable> items) {
  if (items.length < 2) {
    return null;
  }
  var orderings = allOrderings(items).where((o) => o.isPossible());
  var cheapest = orderings.reduce((o1, o2) {
    var c1 = o1.getCost();
    var c2 = o2.getCost();
    if (c1 < c2)
      return o1;
    else
      return o2;
  });
  return cheapest;
}

class LevelTooHighException implements Exception {
  LevelTooHighException() {}
  String toString() =>
      "The given level is higher than the max level for this enchantment";
}

abstract class Enchantable {
  ConcreteEnchantable makeConcrete();
  int getCost();
}

abstract class ConcreteEnchantable extends Enchantable {
  int priorWork;
  bool isDamaged;
  Set<Enchantment> enchantments;
  String get fullName;
  Symbol get typeId;
  ConcreteEnchantable(this.priorWork, this.isDamaged, this.enchantments) {}
  ConcreteEnchantable clone();
  // This is what it "costs" to just have this item. This ignores the cost of getting it.
  // This is so I can calculate the total cost of a tree just by traversing it
  int getCost() => 0;
  ConcreteEnchantable makeConcrete() {
    return this;
  }

  Set<Enchantment> cloneEnchantments() {
    return enchantments.map((e) => e.clone()).toSet();
  }

  String toString() {
    var enchants = this.enchantments.map((e) => e.toString()).join(", ");
    return "$fullName ($priorWork): $enchants";
  }

  Enchantment getCompatibleEnchantment(Enchantment enchant) {
    for (final other in this.enchantments) {
      if (other.typeId == enchant.typeId) return other;
    }
    return null;
  }

  bool hasCompatibleEnchantment(Enchantment enchant) {
    return getCompatibleEnchantment(enchant) != null;
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
  Set<String> get compatibleItems;
  Enchantment clone();
  String toString() {
    return "$fullName $level";
  }

  bool operator ==(Object other) {
    if (other is Enchantment) {
      return typeId == other.typeId && level == other.level;
    }
    return false;
  }

  Enchantment(this.level) {
    if (level > maxLevel) {
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

    return clashingSets
        .any((cset) => cset.intersection(intersectingSet).length >= 2);
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
  String toString() {
    return "${output.toString()} costing $cost";
  }
}

EnchantOutput combine(
    ConcreteEnchantable target, ConcreteEnchantable sacrifice) {
  if (target == null || sacrifice == null) {
    throw Exception("You shouldn't pass nulls into combine()");
  }
  var output = _computeOutput(target, sacrifice);
  if (output == null) return null;
  var cost = _computeCost(target, sacrifice, output);
  if (cost >= 40) return null;
  return EnchantOutput(output, cost);
}

ConcreteEnchantable _computeOutput(
    ConcreteEnchantable target, ConcreteEnchantable sacrifice) {
  if (!(target.typeId == sacrifice.typeId || sacrifice is Book)) return null;

  var out = target.clone();
  out.priorWork = max(target.priorWork, sacrifice.priorWork) + 1;
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
    if (output == null) return null;
  }
  return _priorWorkPenalty(target) +
      _priorWorkPenalty(sacrifice) +
      _repairCost(target, sacrifice) +
      _enchantmentCost(target, sacrifice, output);
}

int _priorWorkPenalty(ConcreteEnchantable item) {
  return pow(2, item.priorWork) - 1;
}

int _repairCost(ConcreteEnchantable target, ConcreteEnchantable sacrifice) {
  if (target.isDamaged && target.typeId == sacrifice.typeId)
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
  String toString() {
    return "Cost: ${getCost()} : $lastPairing";
  }

  bool isPossible() {
    var cost = getCost();
    return cost != null;
  }

  int getCost() {
    int out = 0;
    Queue<Enchantable> q = Queue.from([lastPairing]);
    while (q.isNotEmpty) {
      var e = q.removeFirst();
      var cost = e.getCost();
      if (cost == null) return null;
      out += cost;
      if (e is EnchantPairing) {
        q.addLast(e.target);
        q.addLast(e.sacrifice);
      }
    }
    return out;
  }
}

class EnchantPairing extends Enchantable {
  Enchantable target;
  Enchantable sacrifice;
  EnchantOutput get _output {
    var concreteTarget = target.makeConcrete();
    var concreteSacrifice = sacrifice.makeConcrete();
    if (concreteTarget != null && concreteSacrifice != null) {
      this.__output ??= combine(concreteTarget, concreteSacrifice);
    }
    return this.__output;
  }

  EnchantOutput __output;
  EnchantPairing(this.target, this.sacrifice) {}
  int getCost() {
    return this._output?.cost;
  }

  ConcreteEnchantable makeConcrete() {
    return this._output?.output;
  }

  String toString() {
    return "(${this.target.toString()}) (${this.sacrifice.toString()})";
  }
}

Set<EnchantOrdering> allOrderings(Set<Enchantable> enchantables) {
  List<Enchantable> es = enchantables.toList();
  if (enchantables.length == 2) {
    return {
      EnchantOrdering(EnchantPairing(es[0], es[1])),
      EnchantOrdering(EnchantPairing(es[1], es[0]))
    };
  } else if (enchantables.length <= 1) {
    return {};
  }
  var out = <EnchantOrdering>{};

  for (int i1 = 0; i1 < es.length; i1++) {
    for (int i2 = 0; i2 < es.length; i2++) {
      if (i1 == i2) continue;

      List<Enchantable> newList = removeAtIdxs(es, <int>{i1, i2});
      newList.add(EnchantPairing(es[i1], es[i2]));
      out = out.union(allOrderings(newList.toSet()));
    }
  }
  var f = out.where((e) => e.isPossible()).toSet();
  return f;
}

List<Enchantable> removeAtIdxs(List<Enchantable> es, Set<int> idxs) {
  List<Enchantable> out = [];
  for (int i = 0; i < es.length; i++) {
    if (!idxs.contains(i)) out.add(es[i]);
  }
  return out;
}
