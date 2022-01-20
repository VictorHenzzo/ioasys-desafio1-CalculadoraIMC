import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_colors.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_images.dart';

class IMCPage extends StatefulWidget {
  const IMCPage({Key? key}) : super(key: key);

  @override
  _IMCPageState createState() => _IMCPageState();
}

class _IMCPageState extends State<IMCPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: Image.asset(AppImages.logoAppBar),
        title: const Text('Calculadora IMC'),
        actions: [
          GestureDetector(
            onTap: () {
              //TODO: Inserir função refresh
            },
            child: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
