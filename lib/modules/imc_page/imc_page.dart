import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/imc_page/imc_controller.dart';
import 'package:ioasys_calculadora_imc/modules/shared/buttons/buttons.dart';
import 'package:ioasys_calculadora_imc/modules/shared/text_field_imc/text_field_imc.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_colors.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_fonts.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_images.dart';

class IMCPage extends StatefulWidget {
  const IMCPage({
    Key? key,
  }) : super(key: key);

  @override
  _IMCPageState createState() => _IMCPageState();
}

class _IMCPageState extends State<IMCPage> {
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();
  String? resultado;

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
            const Spacer(flex: 1),
            Image.asset(AppImages.avatar),
            const Spacer(flex: 1),
            TextFieldIMC(controller: pesoController, label: 'Peso (kg)'),
            const Spacer(flex: 1),
            TextFieldIMC(controller: alturaController, label: 'Altura (cm)'),
            const Spacer(flex: 1),
            Buttons(
              onPressed: () {
                setState(() {
                  resultado = IMCController()
                      .calcularIMC(alturaController, pesoController);
                  resultado == null
                      ? ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                          content: Text('Informações inseridas inválidas!'),
                          duration: Duration(seconds: 3),
                          backgroundColor: AppColors.error,
                        ))
                      : null;
                });
              },
              text: 'Calcular',
              color: AppColors.primary,
            ),
            const Spacer(flex: 1),
            Text(
              resultado == null ? 'Informe seus dados' : resultado!,
              style: AppFonts.resultText,
            ),
            const Spacer(flex: 7),
          ],
        ),
      ),
    );
  }
}
