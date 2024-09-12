import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final String resultado;
  const Resultado({super.key, required this.resultado});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem = 'assets/images/moeda_cara.png';
    if (widget.resultado == 'coroa') {
      caminhoImagem = 'assets/images/moeda_coroa.png';
    }
    return Scaffold(
      backgroundColor: const Color(0xff61bd8c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: AssetImage(caminhoImagem)),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Image(image: AssetImage('assets/images/botao_voltar.png')),
          )
        ],
      ),
    );
  }
}
