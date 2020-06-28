import 'calc.dart';

class Protection extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 1;
  final int maxLevel = 4;
  final String fullName = "Protection";
  final Symbol typeId = #Protection;
  static const Set<String> compatibleItemSet = const {
    "Turtle Helmet",
    "Leggings",
    "Boots",
    "Book",
    "Helmet",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return Protection.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Protection.compatibleItemSet;

  Protection(int level) : super(level) {}

  Protection clone() {
    return Protection(this.level);
  }
}

class FireProtection extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 2;
  final int maxLevel = 4;
  final String fullName = "Fire Protection";
  final Symbol typeId = #FireProtection;
  static const Set<String> compatibleItemSet = const {
    "Turtle Helmet",
    "Leggings",
    "Boots",
    "Book",
    "Helmet",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return FireProtection.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => FireProtection.compatibleItemSet;

  FireProtection(int level) : super(level) {}

  FireProtection clone() {
    return FireProtection(this.level);
  }
}

class FeatherFalling extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 2;
  final int maxLevel = 4;
  final String fullName = "Feather Falling";
  final Symbol typeId = #FeatherFalling;
  static const Set<String> compatibleItemSet = const {"Book", "Boots"};
  bool applicable(ConcreteEnchantable tool) {
    return FeatherFalling.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => FeatherFalling.compatibleItemSet;

  FeatherFalling(int level) : super(level) {}

  FeatherFalling clone() {
    return FeatherFalling(this.level);
  }
}

class BlastProtection extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 4;
  final String fullName = "Blast Protection";
  final Symbol typeId = #BlastProtection;
  static const Set<String> compatibleItemSet = const {
    "Turtle Helmet",
    "Leggings",
    "Boots",
    "Book",
    "Helmet",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return BlastProtection.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => BlastProtection.compatibleItemSet;

  BlastProtection(int level) : super(level) {}

  BlastProtection clone() {
    return BlastProtection(this.level);
  }
}

class ProjectileProtection extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 2;
  final int maxLevel = 4;
  final String fullName = "Projectile Protection";
  final Symbol typeId = #ProjectileProtection;
  static const Set<String> compatibleItemSet = const {
    "Turtle Helmet",
    "Leggings",
    "Boots",
    "Book",
    "Helmet",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return ProjectileProtection.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => ProjectileProtection.compatibleItemSet;

  ProjectileProtection(int level) : super(level) {}

  ProjectileProtection clone() {
    return ProjectileProtection(this.level);
  }
}

class Thorns extends Enchantment {
  final int bookMultiplier = 4;
  final int toolMultiplier = 8;
  final int maxLevel = 3;
  final String fullName = "Thorns";
  final Symbol typeId = #Thorns;
  static const Set<String> compatibleItemSet = const {
    "Turtle Helmet",
    "Leggings",
    "Boots",
    "Book",
    "Helmet",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return Thorns.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Thorns.compatibleItemSet;

  Thorns(int level) : super(level) {}

  Thorns clone() {
    return Thorns(this.level);
  }
}

class Respiration extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 3;
  final String fullName = "Respiration";
  final Symbol typeId = #Respiration;
  static const Set<String> compatibleItemSet = const {
    "Book",
    "Helmet",
    "Turtle Helmet"
  };
  bool applicable(ConcreteEnchantable tool) {
    return Respiration.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Respiration.compatibleItemSet;

  Respiration(int level) : super(level) {}

  Respiration clone() {
    return Respiration(this.level);
  }
}

class DepthStrider extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 3;
  final String fullName = "Depth Strider";
  final Symbol typeId = #DepthStrider;
  static const Set<String> compatibleItemSet = const {"Book", "Boots"};
  bool applicable(ConcreteEnchantable tool) {
    return DepthStrider.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => DepthStrider.compatibleItemSet;

  DepthStrider(int level) : super(level) {}

  DepthStrider clone() {
    return DepthStrider(this.level);
  }
}

class AquaAffinity extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 1;
  final String fullName = "Aqua Affinity";
  final Symbol typeId = #AquaAffinity;
  static const Set<String> compatibleItemSet = const {
    "Book",
    "Helmet",
    "Turtle Helmet"
  };
  bool applicable(ConcreteEnchantable tool) {
    return AquaAffinity.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => AquaAffinity.compatibleItemSet;

  AquaAffinity(int level) : super(level) {}

  AquaAffinity clone() {
    return AquaAffinity(this.level);
  }
}

class Sharpness extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 1;
  final int maxLevel = 5;
  final String fullName = "Sharpness";
  final Symbol typeId = #Sharpness;
  static const Set<String> compatibleItemSet = const {"Book", "Axe", "Sword"};
  bool applicable(ConcreteEnchantable tool) {
    return Sharpness.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Sharpness.compatibleItemSet;

  Sharpness(int level) : super(level) {}

  Sharpness clone() {
    return Sharpness(this.level);
  }
}

class Smite extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 2;
  final int maxLevel = 5;
  final String fullName = "Smite";
  final Symbol typeId = #Smite;
  static const Set<String> compatibleItemSet = const {"Book", "Axe", "Sword"};
  bool applicable(ConcreteEnchantable tool) {
    return Smite.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Smite.compatibleItemSet;

  Smite(int level) : super(level) {}

  Smite clone() {
    return Smite(this.level);
  }
}

class BaneofArthropods extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 2;
  final int maxLevel = 5;
  final String fullName = "Bane of Arthropods";
  final Symbol typeId = #BaneofArthropods;
  static const Set<String> compatibleItemSet = const {"Book", "Axe", "Sword"};
  bool applicable(ConcreteEnchantable tool) {
    return BaneofArthropods.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => BaneofArthropods.compatibleItemSet;

  BaneofArthropods(int level) : super(level) {}

  BaneofArthropods clone() {
    return BaneofArthropods(this.level);
  }
}

class Knockback extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 2;
  final int maxLevel = 2;
  final String fullName = "Knockback";
  final Symbol typeId = #Knockback;
  static const Set<String> compatibleItemSet = const {"Book", "Sword"};
  bool applicable(ConcreteEnchantable tool) {
    return Knockback.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Knockback.compatibleItemSet;

  Knockback(int level) : super(level) {}

  Knockback clone() {
    return Knockback(this.level);
  }
}

class FireAspect extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 2;
  final String fullName = "Fire Aspect";
  final Symbol typeId = #FireAspect;
  static const Set<String> compatibleItemSet = const {"Book", "Sword"};
  bool applicable(ConcreteEnchantable tool) {
    return FireAspect.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => FireAspect.compatibleItemSet;

  FireAspect(int level) : super(level) {}

  FireAspect clone() {
    return FireAspect(this.level);
  }
}

class Looting extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 3;
  final String fullName = "Looting";
  final Symbol typeId = #Looting;
  static const Set<String> compatibleItemSet = const {"Book", "Sword"};
  bool applicable(ConcreteEnchantable tool) {
    return Looting.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Looting.compatibleItemSet;

  Looting(int level) : super(level) {}

  Looting clone() {
    return Looting(this.level);
  }
}

class Efficiency extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 1;
  final int maxLevel = 5;
  final String fullName = "Efficiency";
  final Symbol typeId = #Efficiency;
  static const Set<String> compatibleItemSet = const {
    "Pickaxe",
    "Shears",
    "Book",
    "Axe",
    "Shovel"
  };
  bool applicable(ConcreteEnchantable tool) {
    return Efficiency.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Efficiency.compatibleItemSet;

  Efficiency(int level) : super(level) {}

  Efficiency clone() {
    return Efficiency(this.level);
  }
}

class SilkTouch extends Enchantment {
  final int bookMultiplier = 4;
  final int toolMultiplier = 8;
  final int maxLevel = 1;
  final String fullName = "Silk Touch";
  final Symbol typeId = #SilkTouch;
  static const Set<String> compatibleItemSet = const {
    "Pickaxe",
    "Book",
    "Axe",
    "Shovel"
  };
  bool applicable(ConcreteEnchantable tool) {
    return SilkTouch.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => SilkTouch.compatibleItemSet;

  SilkTouch(int level) : super(level) {}

  SilkTouch clone() {
    return SilkTouch(this.level);
  }
}

class Unbreaking extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 2;
  final int maxLevel = 3;
  final String fullName = "Unbreaking";
  final Symbol typeId = #Unbreaking;
  static const Set<String> compatibleItemSet = const {
    "Boots",
    "Bow",
    "Crossbow",
    "Helmet",
    "Elytra",
    "Shield",
    "Fishing Rod",
    "Flint and Steel",
    "Axe",
    "Hoe",
    "Pickaxe",
    "Leggings",
    "Shears",
    "Warped Fungus on a Stick",
    "Carrot on a Stick",
    "Book",
    "Turtle Helmet",
    "Trident",
    "Sword",
    "Shovel",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return Unbreaking.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Unbreaking.compatibleItemSet;

  Unbreaking(int level) : super(level) {}

  Unbreaking clone() {
    return Unbreaking(this.level);
  }
}

class Fortune extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 3;
  final String fullName = "Fortune";
  final Symbol typeId = #Fortune;
  static const Set<String> compatibleItemSet = const {
    "Pickaxe",
    "Book",
    "Axe",
    "Shovel"
  };
  bool applicable(ConcreteEnchantable tool) {
    return Fortune.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Fortune.compatibleItemSet;

  Fortune(int level) : super(level) {}

  Fortune clone() {
    return Fortune(this.level);
  }
}

class Power extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 1;
  final int maxLevel = 5;
  final String fullName = "Power";
  final Symbol typeId = #Power;
  static const Set<String> compatibleItemSet = const {"Book", "Bow"};
  bool applicable(ConcreteEnchantable tool) {
    return Power.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Power.compatibleItemSet;

  Power(int level) : super(level) {}

  Power clone() {
    return Power(this.level);
  }
}

class Punch extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 2;
  final String fullName = "Punch";
  final Symbol typeId = #Punch;
  static const Set<String> compatibleItemSet = const {"Book", "Bow"};
  bool applicable(ConcreteEnchantable tool) {
    return Punch.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Punch.compatibleItemSet;

  Punch(int level) : super(level) {}

  Punch clone() {
    return Punch(this.level);
  }
}

class Flame extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 1;
  final String fullName = "Flame";
  final Symbol typeId = #Flame;
  static const Set<String> compatibleItemSet = const {"Book", "Bow"};
  bool applicable(ConcreteEnchantable tool) {
    return Flame.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Flame.compatibleItemSet;

  Flame(int level) : super(level) {}

  Flame clone() {
    return Flame(this.level);
  }
}

class Infinity extends Enchantment {
  final int bookMultiplier = 4;
  final int toolMultiplier = 8;
  final int maxLevel = 1;
  final String fullName = "Infinity";
  final Symbol typeId = #Infinity;
  static const Set<String> compatibleItemSet = const {"Book", "Bow"};
  bool applicable(ConcreteEnchantable tool) {
    return Infinity.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Infinity.compatibleItemSet;

  Infinity(int level) : super(level) {}

  Infinity clone() {
    return Infinity(this.level);
  }
}

class LuckoftheSea extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 3;
  final String fullName = "Luck of the Sea";
  final Symbol typeId = #LuckoftheSea;
  static const Set<String> compatibleItemSet = const {"Book", "Fishing Rod"};
  bool applicable(ConcreteEnchantable tool) {
    return LuckoftheSea.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => LuckoftheSea.compatibleItemSet;

  LuckoftheSea(int level) : super(level) {}

  LuckoftheSea clone() {
    return LuckoftheSea(this.level);
  }
}

class Lure extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 3;
  final String fullName = "Lure";
  final Symbol typeId = #Lure;
  static const Set<String> compatibleItemSet = const {"Book", "Fishing Rod"};
  bool applicable(ConcreteEnchantable tool) {
    return Lure.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Lure.compatibleItemSet;

  Lure(int level) : super(level) {}

  Lure clone() {
    return Lure(this.level);
  }
}

class FrostWalker extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 2;
  final String fullName = "Frost Walker";
  final Symbol typeId = #FrostWalker;
  static const Set<String> compatibleItemSet = const {"Book", "Boots"};
  bool applicable(ConcreteEnchantable tool) {
    return FrostWalker.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => FrostWalker.compatibleItemSet;

  FrostWalker(int level) : super(level) {}

  FrostWalker clone() {
    return FrostWalker(this.level);
  }
}

class Mending extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 1;
  final String fullName = "Mending";
  final Symbol typeId = #Mending;
  static const Set<String> compatibleItemSet = const {
    "Boots",
    "Bow",
    "Crossbow",
    "Helmet",
    "Elytra",
    "Shield",
    "Fishing Rod",
    "Flint and Steel",
    "Axe",
    "Hoe",
    "Pickaxe",
    "Leggings",
    "Shears",
    "Warped Fungus on a Stick",
    "Carrot on a Stick",
    "Book",
    "Turtle Helmet",
    "Trident",
    "Sword",
    "Shovel",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return Mending.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Mending.compatibleItemSet;

  Mending(int level) : super(level) {}

  Mending clone() {
    return Mending(this.level);
  }
}

class CurseofBinding extends Enchantment {
  final int bookMultiplier = 4;
  final int toolMultiplier = 8;
  final int maxLevel = 1;
  final String fullName = "Curse of Binding";
  final Symbol typeId = #CurseofBinding;
  static const Set<String> compatibleItemSet = const {
    "Leggings",
    "Boots",
    "Carved Pumpkin",
    "Helmet",
    "Head",
    "Elytra",
    "Book",
    "Turtle Helmet",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return CurseofBinding.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => CurseofBinding.compatibleItemSet;

  CurseofBinding(int level) : super(level) {}

  CurseofBinding clone() {
    return CurseofBinding(this.level);
  }
}

class CurseofVanishing extends Enchantment {
  final int bookMultiplier = 4;
  final int toolMultiplier = 8;
  final int maxLevel = 1;
  final String fullName = "Curse of Vanishing";
  final Symbol typeId = #CurseofVanishing;
  static const Set<String> compatibleItemSet = const {
    "Boots",
    "Bow",
    "Carved Pumpkin",
    "Helmet",
    "Crossbow",
    "Elytra",
    "Shield",
    "Fishing Rod",
    "Turtle Helmet",
    "Flint and Steel",
    "Hoe",
    "Pickaxe",
    "Leggings",
    "Shears",
    "Trident",
    "Warped Fungus on a Stick",
    "Carrot on a Stick",
    "Head",
    "Book",
    "Axe",
    "Sword",
    "Shovel",
    "Chestplate"
  };
  bool applicable(ConcreteEnchantable tool) {
    return CurseofVanishing.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => CurseofVanishing.compatibleItemSet;

  CurseofVanishing(int level) : super(level) {}

  CurseofVanishing clone() {
    return CurseofVanishing(this.level);
  }
}

class Impaling extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 5;
  final String fullName = "Impaling";
  final Symbol typeId = #Impaling;
  static const Set<String> compatibleItemSet = const {"Book", "Trident"};
  bool applicable(ConcreteEnchantable tool) {
    return Impaling.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Impaling.compatibleItemSet;

  Impaling(int level) : super(level) {}

  Impaling clone() {
    return Impaling(this.level);
  }
}

class Riptide extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 3;
  final String fullName = "Riptide";
  final Symbol typeId = #Riptide;
  static const Set<String> compatibleItemSet = const {"Book", "Trident"};
  bool applicable(ConcreteEnchantable tool) {
    return Riptide.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Riptide.compatibleItemSet;

  Riptide(int level) : super(level) {}

  Riptide clone() {
    return Riptide(this.level);
  }
}

class Loyalty extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 1;
  final int maxLevel = 3;
  final String fullName = "Loyalty";
  final Symbol typeId = #Loyalty;
  static const Set<String> compatibleItemSet = const {"Book", "Trident"};
  bool applicable(ConcreteEnchantable tool) {
    return Loyalty.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Loyalty.compatibleItemSet;

  Loyalty(int level) : super(level) {}

  Loyalty clone() {
    return Loyalty(this.level);
  }
}

class Channeling extends Enchantment {
  final int bookMultiplier = 4;
  final int toolMultiplier = 8;
  final int maxLevel = 1;
  final String fullName = "Channeling";
  final Symbol typeId = #Channeling;
  static const Set<String> compatibleItemSet = const {"Book", "Trident"};
  bool applicable(ConcreteEnchantable tool) {
    return Channeling.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Channeling.compatibleItemSet;

  Channeling(int level) : super(level) {}

  Channeling clone() {
    return Channeling(this.level);
  }
}

class Multishot extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 1;
  final String fullName = "Multishot";
  final Symbol typeId = #Multishot;
  static const Set<String> compatibleItemSet = const {"Book", "Crossbow"};
  bool applicable(ConcreteEnchantable tool) {
    return Multishot.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Multishot.compatibleItemSet;

  Multishot(int level) : super(level) {}

  Multishot clone() {
    return Multishot(this.level);
  }
}

class Piercing extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 1;
  final int maxLevel = 4;
  final String fullName = "Piercing";
  final Symbol typeId = #Piercing;
  static const Set<String> compatibleItemSet = const {"Book", "Crossbow"};
  bool applicable(ConcreteEnchantable tool) {
    return Piercing.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => Piercing.compatibleItemSet;

  Piercing(int level) : super(level) {}

  Piercing clone() {
    return Piercing(this.level);
  }
}

class QuickCharge extends Enchantment {
  final int bookMultiplier = 1;
  final int toolMultiplier = 2;
  final int maxLevel = 3;
  final String fullName = "Quick Charge";
  final Symbol typeId = #QuickCharge;
  static const Set<String> compatibleItemSet = const {"Book", "Crossbow"};
  bool applicable(ConcreteEnchantable tool) {
    return QuickCharge.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => QuickCharge.compatibleItemSet;

  QuickCharge(int level) : super(level) {}

  QuickCharge clone() {
    return QuickCharge(this.level);
  }
}

class SoulSpeed extends Enchantment {
  final int bookMultiplier = 4;
  final int toolMultiplier = 8;
  final int maxLevel = 3;
  final String fullName = "Soul Speed";
  final Symbol typeId = #SoulSpeed;
  static const Set<String> compatibleItemSet = const {"Book", "Boots"};
  bool applicable(ConcreteEnchantable tool) {
    return SoulSpeed.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => SoulSpeed.compatibleItemSet;

  SoulSpeed(int level) : super(level) {}

  SoulSpeed clone() {
    return SoulSpeed(this.level);
  }
}

class SweepingEdge extends Enchantment {
  final int bookMultiplier = 2;
  final int toolMultiplier = 4;
  final int maxLevel = 3;
  final String fullName = "Sweeping Edge";
  final Symbol typeId = #SweepingEdge;
  static const Set<String> compatibleItemSet = const {"Book", "Sword"};
  bool applicable(ConcreteEnchantable tool) {
    return SweepingEdge.compatibleItemSet.contains(tool.fullName);
  }

  Set<String> get compatibleItems => SweepingEdge.compatibleItemSet;

  SweepingEdge(int level) : super(level) {}

  SweepingEdge clone() {
    return SweepingEdge(this.level);
  }
}

List<String> allEnchantments = [
  'Protection',
  'Fire Protection',
  'Feather Falling',
  'Blast Protection',
  'Projectile Protection',
  'Thorns',
  'Respiration',
  'Depth Strider',
  'Aqua Affinity',
  'Sharpness',
  'Smite',
  'Bane of Arthropods',
  'Knockback',
  'Fire Aspect',
  'Looting',
  'Efficiency',
  'Silk Touch',
  'Unbreaking',
  'Fortune',
  'Power',
  'Punch',
  'Flame',
  'Infinity',
  'Luck of the Sea',
  'Lure',
  'Frost Walker',
  'Mending',
  'Curse of Binding',
  'Curse of Vanishing',
  'Impaling',
  'Riptide',
  'Loyalty',
  'Channeling',
  'Multishot',
  'Piercing',
  'Quick Charge',
  'Soul Speed',
  'Sweeping Edge'
];

Enchantment constructEnchantment(String name, int level) {
  switch (name) {
    case "Protection":
      {
        return Protection(level);
      }

    case "Fire Protection":
      {
        return FireProtection(level);
      }

    case "Feather Falling":
      {
        return FeatherFalling(level);
      }

    case "Blast Protection":
      {
        return BlastProtection(level);
      }

    case "Projectile Protection":
      {
        return ProjectileProtection(level);
      }

    case "Thorns":
      {
        return Thorns(level);
      }

    case "Respiration":
      {
        return Respiration(level);
      }

    case "Depth Strider":
      {
        return DepthStrider(level);
      }

    case "Aqua Affinity":
      {
        return AquaAffinity(level);
      }

    case "Sharpness":
      {
        return Sharpness(level);
      }

    case "Smite":
      {
        return Smite(level);
      }

    case "Bane of Arthropods":
      {
        return BaneofArthropods(level);
      }

    case "Knockback":
      {
        return Knockback(level);
      }

    case "Fire Aspect":
      {
        return FireAspect(level);
      }

    case "Looting":
      {
        return Looting(level);
      }

    case "Efficiency":
      {
        return Efficiency(level);
      }

    case "Silk Touch":
      {
        return SilkTouch(level);
      }

    case "Unbreaking":
      {
        return Unbreaking(level);
      }

    case "Fortune":
      {
        return Fortune(level);
      }

    case "Power":
      {
        return Power(level);
      }

    case "Punch":
      {
        return Punch(level);
      }

    case "Flame":
      {
        return Flame(level);
      }

    case "Infinity":
      {
        return Infinity(level);
      }

    case "Luck of the Sea":
      {
        return LuckoftheSea(level);
      }

    case "Lure":
      {
        return Lure(level);
      }

    case "Frost Walker":
      {
        return FrostWalker(level);
      }

    case "Mending":
      {
        return Mending(level);
      }

    case "Curse of Binding":
      {
        return CurseofBinding(level);
      }

    case "Curse of Vanishing":
      {
        return CurseofVanishing(level);
      }

    case "Impaling":
      {
        return Impaling(level);
      }

    case "Riptide":
      {
        return Riptide(level);
      }

    case "Loyalty":
      {
        return Loyalty(level);
      }

    case "Channeling":
      {
        return Channeling(level);
      }

    case "Multishot":
      {
        return Multishot(level);
      }

    case "Piercing":
      {
        return Piercing(level);
      }

    case "Quick Charge":
      {
        return QuickCharge(level);
      }

    case "Soul Speed":
      {
        return SoulSpeed(level);
      }

    case "Sweeping Edge":
      {
        return SweepingEdge(level);
      }
  }
  return null;
}
