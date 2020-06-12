import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'calc.dart';
import 'enchantments.dart';
import 'enchant_component.dart';

@Component(
    selector: 'enchant-selector',
    templateUrl: 'enchant_select_component.html',
    directives: [coreDirectives, formDirectives, EnchantComponent],
    styleUrls: ['enchant_select_component.css'])
class EnchantSelectionComponent {
  @Input()
  List<Enchantment> enchantments;
  @Input()
  ConcreteEnchantable item;
  static final List<Enchantment> allEnchantmentsConstructed = allEnchantments.map((e) => constructEnchantment(e, 1)).toList();
  EnchantSelectionComponent() {}
  void addEnchantment() {
      Enchantment startingEnchantment = allEnchantmentsConstructed.firstWhere((e) => e.applicable(item));
      enchantments.add(startingEnchantment);
  }
}
