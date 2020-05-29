void main() {
    print("Hello world");
}

abstract class Enchantable {
    int priorWork;
    bool isDamaged;
    Set<Enchantment> enchantments;
}

abstract class Enchantment {
    int level;
    int bookMultiplier;
    int toolMultiplier;
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
    return 5;
}
