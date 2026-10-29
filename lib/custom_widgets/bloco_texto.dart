import 'package:flutter/material.dart';

class BlocoTexto extends StatelessWidget {
  final String titulo;
  final String conteudo;

  const BlocoTexto({
    super.key,
    required this.titulo,
    required this.conteudo,
  });

  @override
  Widget build(BuildContext context) {
    final double larguraTela = MediaQuery.sizeOf(context).width;
    final double larguraBloco = larguraTela > 380 ? 362 : larguraTela - 32;

    return Container(
      padding: const EdgeInsets.all(15),
      width: larguraBloco,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(226, 221, 232, 1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            conteudo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
