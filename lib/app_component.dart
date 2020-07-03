import 'package:angular/angular.dart';
import "tool_component.dart";
import 'calc.dart';
import 'DynamicEnchantable.dart';
import 'DynamicEnchantment.dart';
import 'enchant_subtree.dart';

@Component(
    selector: 'app-component',
    templateUrl: 'app_component.html',
    directives: [coreDirectives, ToolComponent, EnchantSubtree],
    styleUrls: ['app_component.css'])
class AppComponent {
  List<DynamicEnchantable> tools = [
    DynamicEnchantable(
        "Pickaxe",
        [
          DynamicEnchantment("Efficiency", 5),
          DynamicEnchantment("Unbreaking", 3)
        ],
        0,
        false),
    DynamicEnchantable("Pickaxe", [DynamicEnchantment("Fortune", 3)], 0, false),
    DynamicEnchantable("Book", [DynamicEnchantment("Mending", 1)], 0, false)
  ];
  EnchantOrdering output = null;
  /*
     EnchantOrdering output = EnchantOrdering(EnchantPairing(
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

  void removeTool(int index) {
    tools.removeAt(index);
  }
}
