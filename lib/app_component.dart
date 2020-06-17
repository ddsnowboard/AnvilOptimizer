import 'package:angular/angular.dart';
import "tool_component.dart";
import 'calc.dart';
import 'DynamicEnchantable.dart';

@Component(
    selector: 'app-component',
    templateUrl: 'app_component.html',
    directives: [coreDirectives, ToolComponent])
class AppComponent {
  List<DynamicEnchantable> tools = [];
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
    print(bestOrdering);
  }
}
