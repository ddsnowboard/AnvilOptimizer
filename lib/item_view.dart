import 'package:angular/angular.dart';
import 'calc.dart';

@Component(
    selector: 'item-view',
    templateUrl: 'item_view.html',
    directives: [coreDirectives],
    styleUrls: ['item_view.css'])
class ItemView {
  @Input()
  ConcreteEnchantable item;
}
