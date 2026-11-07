import 'package:flutter/material.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';

class TelaOculta extends StatelessWidget {
  const TelaOculta({super.key});

  Widget _buildCirculoBloco({
    required double diametro,
    required Color corFundo,
    required String assetPath,
  }) {
    return Container(
      width: diametro,
      height: diametro,
      decoration: BoxDecoration(
        color: corFundo,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          assetPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isOculta: true,
      espacamento: 0,
      conteudos: [
        LayoutBuilder(
          builder: (context, constraints) {
            final double largura = constraints.maxWidth > 400
                ? 380
                : (constraints.maxWidth > 0 ? constraints.maxWidth : 340);
            const double altura = 560;

            return SizedBox(
              width: largura,
              height: altura,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 10,
                    left: 8,
                    child: _buildCirculoBloco(
                      diametro: 165,
                      corFundo: const Color(0xFFE4E8F0),
                      assetPath: 'assets/violencia_politica.png',
                    ),
                  ),

                  Positioned(
                    top: 135,
                    right: 8,
                    child: _buildCirculoBloco(
                      diametro: 145,
                      corFundo: const Color(0xFFF7EEDD),
                      assetPath: 'assets/violencia_verbal.png',
                    ),
                  ),

                  Positioned(
                    top: 255,
                    left: 14,
                    child: _buildCirculoBloco(
                      diametro: 160,
                      corFundo: const Color(0xFFF8DDDE),
                      assetPath: 'assets/violencia_fisica.png',
                    ),
                  ),

                  Positioned(
                    top: 385,
                    right: 8,
                    child: _buildCirculoBloco(
                      diametro: 165,
                      corFundo: const Color(0xFFE46B55),
                      assetPath: 'assets/violencia_digital.png',
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
