import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/buttons/buttons.dart';
import 'package:ioasys_calculadora_imc/modules/shared/text_field_imc/text_field_imc.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_colors.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_fonts.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_images.dart';

class IMCPage extends StatefulWidget {
  const IMCPage({Key? key}) : super(key: key);

  @override
  _IMCPageState createState() => _IMCPageState();
}

class _IMCPageState extends State<IMCPage> {
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();
  String? resultado;

  void calcularIMC() {
    double? altura = double.tryParse(alturaController.text);
    double? peso = double.tryParse(pesoController.text);
    double imc;

    if ((altura == null) || (peso == null)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Informações inseridas inválidas!'),
        duration: Duration(seconds: 3),
        backgroundColor: AppColors.error,
      ));
    } else {
      imc = peso * 10000 / (altura * altura);
      if (imc < 18.5) {
        resultado = 'Abaixo do peso! ${imc.toStringAsPrecision(4)}';
      } else if (imc > 18.5 && imc < 24.9) {
        resultado = 'Peso normal! ${imc.toStringAsPrecision(4)}';
      } else if (imc > 25 && imc < 29.9) {
        resultado = 'Pré-obesidade! ${imc.toStringAsPrecision(4)}';
      } else if (imc > 30 && imc < 34.9) {
        resultado = 'Obesidade Grau 1! ${imc.toStringAsPrecision(4)}';
      } else if (imc > 35 && imc < 39.9) {
        resultado = 'Obesidade Grau 2! ${imc.toStringAsPrecision(4)}';
      } else {
        resultado = 'Obesidade Grau 3! ${imc.toStringAsPrecision(4)}';
      }
    }
  }

  @override
  void dispose() {
    pesoController.dispose();
    alturaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AppImages.logoAppBar),
        ),
        title: Text(
          'Calculadora IMC',
          style: AppFonts.lightText,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                resultado = null;
                pesoController.clear();
                alturaController.clear();
              });
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.refresh),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(AppImages.avatar),
            TextFieldIMC(controller: pesoController, label: 'Peso (kg)'),
            TextFieldIMC(controller: alturaController, label: 'Altura (cm)'),
            Buttons(
              onPressed: () {
                setState(() {
                  calcularIMC();
                });
              },
              text: 'Calcular',
              color: AppColors.primary,
            ),
            Text(
              resultado == null ? 'Informe seus dados' : resultado!,
              style: AppFonts.resultText,
            )
          ],
        ),
      ),
    );
  }
}
