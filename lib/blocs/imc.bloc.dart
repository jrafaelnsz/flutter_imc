import 'dart:math';
import 'package:flutter_masked_text/flutter_masked_text.dart';

//Just to remember, blocs stands for bussinnes logic object controller

class Imc {
  var pesoCtrl = new MaskedTextController(mask: '000');
  var alturaCtrl = new MaskedTextController(mask: '000');
  String result = "";

  calcular() {
    double peso;
    double altura;
    peso = double.parse(pesoCtrl.text);
    altura = double.parse(alturaCtrl.text);
    altura = altura / 100;
    var imc = peso / (pow(altura, 2));

    if (imc > 29) {
      result = "Shape Zuado!";
    } else if (imc < 24) {
      result = "Frango!!!";
    } else {
      result = "Normal!";
    }
  }
}
