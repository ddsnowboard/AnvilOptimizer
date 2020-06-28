import 'package:angular/angular.dart';
import "tool_component.dart";

@Component(
    selector: 'enchant-tree',
    templateUrl: 'enchant_tree.html',
    directives: [coreDirectives, ToolComponent])
class EnchantTree {}
