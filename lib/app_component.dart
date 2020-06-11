import 'package:angular/angular.dart';
import 'calc.dart';
import 'enchantments.dart';
import 'items.dart';

@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
)
class AppComponent {
  var name;
  static Enchantable e = Book(3, false, {Power(3)});
  AppComponent() {
      name = "apples";
  }
}
