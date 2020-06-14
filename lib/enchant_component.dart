import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'enchantments.dart';
import 'calc.dart';
import 'dart:async';

@Component(
    selector: 'enchant-component',
    templateUrl: 'enchant_component.html',
    directives: [coreDirectives, formDirectives],
    styleUrls: ['enchant_component.css'])
class EnchantComponent {
  @Input()
  Enchantment enchant;
  @Input()
  List<Enchantment> possibilities;
  @Output()
  Stream<Enchantment> get onChange => _onChange.stream;
  StreamController<Enchantment> _onChange = StreamController<Enchantment>();
  EnchantComponent() {}

  void setEnchant(String newEnchant) {
    _onChange.add(constructEnchantment(newEnchant, 1));
    print(newEnchant);
  }

  bool sameType(Enchantment e1, Enchantment e2) {
      return e1.typeId == e2.typeId;
  }
}
