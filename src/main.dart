import 'calc.dart';
import 'dart:html';

void main() {
  window.customElements.define("tool-specifier", ToolSpecifier);
  print("done");
}

class ToolSpecifier extends DivElement {
  ToolSpecifier() : super.created() {
    var template = document.getElementById("tool-specifier") as TemplateElement;
    this.attachShadow({"mode": "open"}).append(
        template.content.clone(true));
  }
}
