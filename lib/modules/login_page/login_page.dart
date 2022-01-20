import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/buttons/buttons.dart';
import 'package:ioasys_calculadora_imc/modules/shared/text_field_login/text_field_login.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_colors.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_fonts.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_images.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 3),
            Image.asset(AppImages.logoLogin),
            const Spacer(flex: 4),
            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seja bem vindo!',
                    style: AppFonts.titleLogin,
                  ),
                  Text(
                    'Calculadora IMC',
                    style: AppFonts.subTitleLogin,
                  )
                ],
              ),
            ),
            const Spacer(flex: 2),
            const TextFieldLogin(
              text: 'usuário',
            ),
            const Spacer(flex: 1),
            const TextFieldLogin(
              text: 'senha',
              hideText: true,
            ),
            const Spacer(flex: 1),
            Buttons(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/IMC');
              },
              text: 'ENTRAR',
              color: AppColors.leading,
            ),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
