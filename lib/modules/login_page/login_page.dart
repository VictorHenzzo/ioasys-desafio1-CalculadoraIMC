import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/app_colors.dart';
import 'package:ioasys_calculadora_imc/modules/shared/app_images.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            Image.asset(AppImages.logoLogin),
          ],
        ),
      ),
    );
  }
}
