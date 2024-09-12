import 'dart:math';

import 'package:cara_ou_coroa/resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  static const String logoPath = 'assets/images/logo.png';
  static const String botaoJogarPath = 'assets/images/botao_jogar.png';

  void setResult() {
    final List<String> itens = ['cara', 'coroa'];
    final int numero = Random().nextInt(2);
    var resultado = itens[numero];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(resultado: resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd8c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Image(image: AssetImage(logoPath)),
          GestureDetector(
            onTap: () {
              setResult();
            },
            child: const Image(image: AssetImage(botaoJogarPath)),
          )
        ],
      ),
    );
  }
}
