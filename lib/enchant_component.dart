import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'enchantments.dart';
import 'calc.dart';

@Component(
    selector: 'enchant-component',
    templateUrl: 'enchant_component.html',
    directives: [coreDirectives, formDirectives],
    styleUrls: ['enchant_component.css'])
class EnchantComponent {
  @Input()
  Enchantment enchant;
  EnchantComponent() {}
}
