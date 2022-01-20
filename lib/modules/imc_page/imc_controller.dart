class IMCController {
  String? calcularIMC(alturaController, pesoController) {
    double? altura = double.tryParse(alturaController.text);
    double? peso = double.tryParse(pesoController.text);
    double imc;

    if ((altura == null) || (peso == null)) {
      return null;
    } else {
      imc = peso * 10000 / (altura * altura);
      if (imc < 18.5) {
        return 'Abaixo do peso (${imc.toStringAsPrecision(4)})';
      } else if (imc > 18.5 && imc < 24.9) {
        return 'Peso normal (${imc.toStringAsPrecision(4)})';
      } else if (imc > 25 && imc < 29.9) {
        return 'Pré-obesidade (${imc.toStringAsPrecision(4)})';
      } else if (imc > 30 && imc < 34.9) {
        return 'Obesidade Grau 1 (${imc.toStringAsPrecision(4)})';
      } else if (imc > 35 && imc < 39.9) {
        return 'Obesidade Grau 2 (${imc.toStringAsPrecision(4)})';
      } else {
        return 'Obesidade Grau 3 (${imc.toStringAsPrecision(4)})';
      }
    }
  }
}
