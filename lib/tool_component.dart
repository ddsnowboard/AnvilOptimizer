import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'items.dart';
import 'calc.dart';
import 'enchantments.dart';
import 'enchant_select_component.dart';

@Component(
    selector: 'tool-component',
    templateUrl: 'tool_component.html',
    directives: [coreDirectives, formDirectives, EnchantSelectionComponent],
    styleUrls: ['tool_component.css'])
class ToolComponent {
    // Whenever this changes, something should happen to the enchantment too, but I don't know what.
  String toolName;
  bool isDamaged = false;
  int priorWork = 0;
  List<Enchantment> enchantments = [];
  ToolComponent() {
    toolName = getTypeNames()[0];
  }

  List<String> getTypeNames() {
    return allItems;
  }

  ConcreteEnchantable getTool() {
      // This isn't a real solution to this problem. I don't know how to actually fix it though.
      return constructTool(toolName, priorWork, isDamaged, enchantments.toSet());
  }
}
