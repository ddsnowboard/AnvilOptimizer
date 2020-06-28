import 'package:angular/angular.dart';
import "tool_component.dart";
import 'calc.dart';
import 'enchantments.dart';
import 'items.dart';
import 'DynamicEnchantable.dart';
import 'enchant_subtree.dart';

@Component(
    selector: 'app-component',
    templateUrl: 'app_component.html',
    directives: [coreDirectives, ToolComponent, EnchantSubtree])
class AppComponent {
  List<DynamicEnchantable> tools = [];
  EnchantOrdering output = null;
  /*EnchantOrdering output = EnchantOrdering(EnchantPairing(
      EnchantPairing(Pickaxe(0, false, {Mending(1), Efficiency(5)}),
          Book(0, false, {Unbreaking(2)})),
      Book(0, false, {Unbreaking(2)})));
      */

  void addTool() {
    tools.add(DynamicEnchantable("Pickaxe", [], 0, false));
  }

  void calculateMinimum() {
    for (var t in tools) {
      print("${t.toolName} with ${t.enchantments.length} enchantments");
    }
    Set<ConcreteEnchantable> concreteTools =
        tools.map((t) => t.toEnchantable()).toSet();
    EnchantOrdering bestOrdering = cheapestOrdering(concreteTools);
    output = bestOrdering;
  }
}
