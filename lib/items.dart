import 'calc.dart';

class Boots extends ConcreteEnchantable {
  final String fullName = 'Boots';
  final Symbol typeId = #Boots;
  Boots(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Boots clone() {
    return Boots(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Bow extends ConcreteEnchantable {
  final String fullName = 'Bow';
  final Symbol typeId = #Bow;
  Bow(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Bow clone() {
    return Bow(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Crossbow extends ConcreteEnchantable {
  final String fullName = 'Crossbow';
  final Symbol typeId = #Crossbow;
  Crossbow(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Crossbow clone() {
    return Crossbow(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Helmet extends ConcreteEnchantable {
  final String fullName = 'Helmet';
  final Symbol typeId = #Helmet;
  Helmet(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Helmet clone() {
    return Helmet(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class CarvedPumpkin extends ConcreteEnchantable {
  final String fullName = 'Carved Pumpkin';
  final Symbol typeId = #CarvedPumpkin;
  CarvedPumpkin(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  CarvedPumpkin clone() {
    return CarvedPumpkin(
        this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Elytra extends ConcreteEnchantable {
  final String fullName = 'Elytra';
  final Symbol typeId = #Elytra;
  Elytra(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Elytra clone() {
    return Elytra(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Shield extends ConcreteEnchantable {
  final String fullName = 'Shield';
  final Symbol typeId = #Shield;
  Shield(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Shield clone() {
    return Shield(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class FishingRod extends ConcreteEnchantable {
  final String fullName = 'Fishing Rod';
  final Symbol typeId = #FishingRod;
  FishingRod(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  FishingRod clone() {
    return FishingRod(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class TurtleHelmet extends ConcreteEnchantable {
  final String fullName = 'Turtle Helmet';
  final Symbol typeId = #TurtleHelmet;
  TurtleHelmet(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  TurtleHelmet clone() {
    return TurtleHelmet(
        this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class FlintandSteel extends ConcreteEnchantable {
  final String fullName = 'Flint and Steel';
  final Symbol typeId = #FlintandSteel;
  FlintandSteel(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  FlintandSteel clone() {
    return FlintandSteel(
        this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Axe extends ConcreteEnchantable {
  final String fullName = 'Axe';
  final Symbol typeId = #Axe;
  Axe(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Axe clone() {
    return Axe(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Hoe extends ConcreteEnchantable {
  final String fullName = 'Hoe';
  final Symbol typeId = #Hoe;
  Hoe(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Hoe clone() {
    return Hoe(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Pickaxe extends ConcreteEnchantable {
  final String fullName = 'Pickaxe';
  final Symbol typeId = #Pickaxe;
  Pickaxe(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Pickaxe clone() {
    return Pickaxe(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Leggings extends ConcreteEnchantable {
  final String fullName = 'Leggings';
  final Symbol typeId = #Leggings;
  Leggings(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Leggings clone() {
    return Leggings(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Shears extends ConcreteEnchantable {
  final String fullName = 'Shears';
  final Symbol typeId = #Shears;
  Shears(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Shears clone() {
    return Shears(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class WarpedFungusonaStick extends ConcreteEnchantable {
  final String fullName = 'Warped Fungus on a Stick';
  final Symbol typeId = #WarpedFungusonaStick;
  WarpedFungusonaStick(
      int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  WarpedFungusonaStick clone() {
    return WarpedFungusonaStick(
        this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class CarrotonaStick extends ConcreteEnchantable {
  final String fullName = 'Carrot on a Stick';
  final Symbol typeId = #CarrotonaStick;
  CarrotonaStick(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  CarrotonaStick clone() {
    return CarrotonaStick(
        this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Head extends ConcreteEnchantable {
  final String fullName = 'Head';
  final Symbol typeId = #Head;
  Head(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Head clone() {
    return Head(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Book extends ConcreteEnchantable {
  final String fullName = 'Book';
  final Symbol typeId = #Book;
  Book(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Book clone() {
    return Book(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Trident extends ConcreteEnchantable {
  final String fullName = 'Trident';
  final Symbol typeId = #Trident;
  Trident(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Trident clone() {
    return Trident(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Sword extends ConcreteEnchantable {
  final String fullName = 'Sword';
  final Symbol typeId = #Sword;
  Sword(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Sword clone() {
    return Sword(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Shovel extends ConcreteEnchantable {
  final String fullName = 'Shovel';
  final Symbol typeId = #Shovel;
  Shovel(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Shovel clone() {
    return Shovel(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

class Chestplate extends ConcreteEnchantable {
  final String fullName = 'Chestplate';
  final Symbol typeId = #Chestplate;
  Chestplate(int priorWork, bool isDamaged, Set<Enchantment> enchantments)
      : super(priorWork, isDamaged, enchantments) {}

  Chestplate clone() {
    return Chestplate(this.priorWork, this.isDamaged, this.cloneEnchantments());
  }
}

List<String> allItems = [
  "Boots",
  "Bow",
  "Crossbow",
  "Helmet",
  "Carved Pumpkin",
  "Elytra",
  "Shield",
  "Fishing Rod",
  "Turtle Helmet",
  "Flint and Steel",
  "Axe",
  "Hoe",
  "Pickaxe",
  "Leggings",
  "Shears",
  "Warped Fungus on a Stick",
  "Carrot on a Stick",
  "Head",
  "Book",
  "Trident",
  "Sword",
  "Shovel",
  "Chestplate"
];
ConcreteEnchantable constructTool(
    String name, int priorWork, bool isDamaged, Set<Enchantment> enchantments) {
  switch (name) {
    case "Boots":
      {
        return Boots(priorWork, isDamaged, enchantments);
      }

    case "Bow":
      {
        return Bow(priorWork, isDamaged, enchantments);
      }

    case "Crossbow":
      {
        return Crossbow(priorWork, isDamaged, enchantments);
      }

    case "Helmet":
      {
        return Helmet(priorWork, isDamaged, enchantments);
      }

    case "Carved Pumpkin":
      {
        return CarvedPumpkin(priorWork, isDamaged, enchantments);
      }

    case "Elytra":
      {
        return Elytra(priorWork, isDamaged, enchantments);
      }

    case "Shield":
      {
        return Shield(priorWork, isDamaged, enchantments);
      }

    case "Fishing Rod":
      {
        return FishingRod(priorWork, isDamaged, enchantments);
      }

    case "Turtle Helmet":
      {
        return TurtleHelmet(priorWork, isDamaged, enchantments);
      }

    case "Flint and Steel":
      {
        return FlintandSteel(priorWork, isDamaged, enchantments);
      }

    case "Axe":
      {
        return Axe(priorWork, isDamaged, enchantments);
      }

    case "Hoe":
      {
        return Hoe(priorWork, isDamaged, enchantments);
      }

    case "Pickaxe":
      {
        return Pickaxe(priorWork, isDamaged, enchantments);
      }

    case "Leggings":
      {
        return Leggings(priorWork, isDamaged, enchantments);
      }

    case "Shears":
      {
        return Shears(priorWork, isDamaged, enchantments);
      }

    case "Warped Fungus on a Stick":
      {
        return WarpedFungusonaStick(priorWork, isDamaged, enchantments);
      }

    case "Carrot on a Stick":
      {
        return CarrotonaStick(priorWork, isDamaged, enchantments);
      }

    case "Head":
      {
        return Head(priorWork, isDamaged, enchantments);
      }

    case "Book":
      {
        return Book(priorWork, isDamaged, enchantments);
      }

    case "Trident":
      {
        return Trident(priorWork, isDamaged, enchantments);
      }

    case "Sword":
      {
        return Sword(priorWork, isDamaged, enchantments);
      }

    case "Shovel":
      {
        return Shovel(priorWork, isDamaged, enchantments);
      }

    case "Chestplate":
      {
        return Chestplate(priorWork, isDamaged, enchantments);
      }
  }
  return null;
}
