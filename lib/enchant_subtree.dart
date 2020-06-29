import 'package:angular/angular.dart';
import 'calc.dart';
import 'item_view.dart';

@Component(
    selector: 'enchant-subtree',
    templateUrl: 'enchant_subtree.html',
    directives: [coreDirectives, EnchantSubtree, ItemView],
    styleUrls: ['enchant_subtree.css'])
class EnchantSubtree {
  @Input()
  EnchantPairing output;

  bool hasLeftSubtree() {
    return output.target is! ConcreteEnchantable;
  }

  bool hasRightSubtree() {
    return output.sacrifice is! ConcreteEnchantable;
  }

  EnchantPairing leftSubtree() {
    return output.target as EnchantPairing;
  }

  EnchantPairing rightSubtree() {
    return output.sacrifice as EnchantPairing;
  }

  int toplineCost() {
      return combine(output.target.makeConcrete(), output.sacrifice.makeConcrete()).cost;
  }
}
