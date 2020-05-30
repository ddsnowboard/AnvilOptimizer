import 'enchantments.dart';


void main() {
    print(_computeCost(null, null));
}

class LevelTooHighException implements Exception {
    LevelTooHighException() {
        
    }
    String toString() => "The given level is higher than the max level for this enchantment";
}

abstract class Enchantable {
    final int priorWork;
    final bool isDamaged;
    final Set<Enchantment> enchantments;
    String get fullName;
    Enchantable(this.priorWork, this.isDamaged, this.enchantments) {
    }
}

abstract class Enchantment {
    int get bookMultiplier;
    int get toolMultiplier;
    int get level;
    int get maxLevel;
    String get fullName;
    bool compatible(Enchantable tool);
}

class EnchantOutput {
    final Enchantable output;
    final int cost;

    EnchantOutput(this.output, this.cost) {
    }
}

EnchantOutput combine(Enchantable target, Enchantable sacrifice) {
    var output = _computeOutput(target, sacrifice);
    var cost = _computeCost(target, sacrifice, output);
}

Enchantable _computeOutput(Enchantable target, Enchantable sacrifice) {
}

int _computeCost(Enchantable target, Enchantable sacrifice, [Enchantable output]) {
    return Sharpness(5).bookMultiplier;
}
