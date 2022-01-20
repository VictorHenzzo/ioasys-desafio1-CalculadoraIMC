import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/imc_page/imc_page.dart';
import 'package:ioasys_calculadora_imc/modules/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ioasys Desafio 1: Calculadora IMC',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/IMC': (context) => const IMCPage(),
      },
    );
  }
}
