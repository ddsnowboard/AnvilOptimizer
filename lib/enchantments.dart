import 'calc.dart';
import 'items.dart';

class Protection extends Enchantment {
    final int bookMultiplier = 1;
    final int toolMultiplier = 1;
    final int maxLevel = 4;
    final String fullName = "Protection";
    final Symbol typeId = #Protection;
    bool applicable(Enchantable tool) {
        return tool is Chestplate || tool is Book || tool is Leggings || tool is Boots || tool is Helmet || tool is TurtleHelmet;
    }

    Protection(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Chestplate || tool is Book || tool is Leggings || tool is Boots || tool is Helmet || tool is TurtleHelmet;
    }

    FireProtection(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Boots || tool is Book;
    }

    FeatherFalling(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Chestplate || tool is Book || tool is Leggings || tool is Boots || tool is Helmet || tool is TurtleHelmet;
    }

    BlastProtection(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Chestplate || tool is Book || tool is Leggings || tool is Boots || tool is Helmet || tool is TurtleHelmet;
    }

    ProjectileProtection(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Chestplate || tool is Book || tool is Leggings || tool is Boots || tool is Helmet || tool is TurtleHelmet;
    }

    Thorns(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is TurtleHelmet || tool is Helmet || tool is Book;
    }

    Respiration(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Boots || tool is Book;
    }

    DepthStrider(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is TurtleHelmet || tool is Helmet || tool is Book;
    }

    AquaAffinity(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Axe || tool is Sword || tool is Book;
    }

    Sharpness(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Axe || tool is Sword || tool is Book;
    }

    Smite(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Axe || tool is Sword || tool is Book;
    }

    BaneofArthropods(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Sword || tool is Book;
    }

    Knockback(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Sword || tool is Book;
    }

    FireAspect(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Sword || tool is Book;
    }

    Looting(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Shovel || tool is Axe || tool is Shears || tool is Book || tool is Pickaxe;
    }

    Efficiency(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Shovel || tool is Axe || tool is Book || tool is Pickaxe;
    }

    SilkTouch(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Shovel || tool is Shield || tool is Bow || tool is Boots || tool is Sword || tool is Shears || tool is FlintandSteel || tool is CarrotonaStick || tool is Chestplate || tool is Axe || tool is Hoe || tool is WarpedFungusonaStick || tool is Book || tool is Leggings || tool is TurtleHelmet || tool is Pickaxe || tool is FishingRod || tool is Trident || tool is Elytra || tool is Crossbow || tool is Helmet;
    }

    Unbreaking(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Shovel || tool is Axe || tool is Book || tool is Pickaxe;
    }

    Fortune(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Book || tool is Bow;
    }

    Power(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Book || tool is Bow;
    }

    Punch(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Book || tool is Bow;
    }

    Flame(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Book || tool is Bow;
    }

    Infinity(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is FishingRod || tool is Book;
    }

    LuckoftheSea(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is FishingRod || tool is Book;
    }

    Lure(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Boots || tool is Book;
    }

    FrostWalker(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Shovel || tool is Shield || tool is Bow || tool is Boots || tool is Sword || tool is Shears || tool is FlintandSteel || tool is CarrotonaStick || tool is Chestplate || tool is Axe || tool is Hoe || tool is WarpedFungusonaStick || tool is Book || tool is Leggings || tool is TurtleHelmet || tool is Pickaxe || tool is FishingRod || tool is Trident || tool is Elytra || tool is Crossbow || tool is Helmet;
    }

    Mending(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Chestplate || tool is Book || tool is Leggings || tool is Boots || tool is TurtleHelmet || tool is CarvedPumpkin || tool is Head || tool is Elytra || tool is Helmet;
    }

    CurseofBinding(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Shovel || tool is Shield || tool is Trident || tool is Boots || tool is Sword || tool is Shears || tool is FlintandSteel || tool is CarrotonaStick || tool is Chestplate || tool is Axe || tool is Hoe || tool is WarpedFungusonaStick || tool is Book || tool is Leggings || tool is TurtleHelmet || tool is Pickaxe || tool is CarvedPumpkin || tool is Head || tool is FishingRod || tool is Bow || tool is Elytra || tool is Crossbow || tool is Helmet;
    }

    CurseofVanishing(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Book || tool is Trident;
    }

    Impaling(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Book || tool is Trident;
    }

    Riptide(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Book || tool is Trident;
    }

    Loyalty(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Book || tool is Trident;
    }

    Channeling(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Crossbow || tool is Book;
    }

    Multishot(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Crossbow || tool is Book;
    }

    Piercing(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Crossbow || tool is Book;
    }

    QuickCharge(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Boots || tool is Book;
    }

    SoulSpeed(int level): super(level) {
    }

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
    bool applicable(Enchantable tool) {
        return tool is Sword || tool is Book;
    }

    SweepingEdge(int level): super(level) {
    }

    SweepingEdge clone() {
        return SweepingEdge(this.level);
    }
}
List<Type> enchantments = [Protection,FireProtection,FeatherFalling,BlastProtection,ProjectileProtection,Thorns,Respiration,DepthStrider,AquaAffinity,Sharpness,Smite,BaneofArthropods,Knockback,FireAspect,Looting,Efficiency,SilkTouch,Unbreaking,Fortune,Power,Punch,Flame,Infinity,LuckoftheSea,Lure,FrostWalker,Mending,CurseofBinding,CurseofVanishing,Impaling,Riptide,Loyalty,Channeling,Multishot,Piercing,QuickCharge,SoulSpeed,SweepingEdge];
