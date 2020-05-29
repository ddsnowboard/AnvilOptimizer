library enchantments;

import 'main.dart';
class Sharpness extends Enchantment {
    int level = 5;
    int bookMultiplier = 4;
    int toolMultiplier = 4;
    bool compatible(Enchantable tool) {
        return true;
    }
}
