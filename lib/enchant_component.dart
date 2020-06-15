import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'enchantments.dart';
import 'calc.dart';
import 'DynamicEnchantment.dart';
import 'dart:async';

@Component(
    selector: 'enchant-component',
    templateUrl: 'enchant_component.html',
    directives: [coreDirectives, formDirectives],
    styleUrls: ['enchant_component.css'])
class EnchantComponent {
  @Input()
  DynamicEnchantment enchant;
  @Input()
  List<Enchantment> possibilities;
  @Output()
  Stream<void> get onClose => _onClose.stream;
  StreamController<void> _onClose = StreamController<void>();
  EnchantComponent() {}
  int currentMaxLevel() {
      return enchant.toEnchantment().maxLevel;
  }
   
  void close() {
      _onClose.add(null);
  }
}
