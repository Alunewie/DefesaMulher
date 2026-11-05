import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionItem {
  final String titulo;
  final String conteudo;

  const SectionItem({
    required this.titulo,
    required this.conteudo,
  });
}

class SectionCard extends StatelessWidget {
  final List<SectionItem> itens;
  final String fonte;
  final String linkSaibaMais;

  const SectionCard({
    super.key,
    required this.itens,
    required this.fonte,
    required this.linkSaibaMais,
  });

  Future<void> _abrirLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final double larguraTela = MediaQuery.sizeOf(context).width;
    final double larguraCard = larguraTela > 400 ? 362 : larguraTela - 32;

    return Container(
      width: larguraCard,
      decoration: BoxDecoration(
        color: const Color(0xFFE2DDE8),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (int i = 0; i < itens.length; i++) ...[
            _buildBlocoTopico(itens[i], isFirst: i == 0),
            if (i < itens.length - 1) const SizedBox(height: 12),
          ],
          const SizedBox(height: 16),
          Center(
            child: Container(
              width: 180,
              height: 8,
              decoration: BoxDecoration(
                color: const Color(0xFFCFBBE8),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fonte,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF2C2735),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                GestureDetector(
                  onTap: () => _abrirLink(linkSaibaMais),
                  child: const Text(
                    '+ Saiba Mais',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF503769),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildBlocoTopico(SectionItem item, {required bool isFirst}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: const Color(0xFFCFBBE8),
            borderRadius: BorderRadius.vertical(
              top: isFirst ? const Radius.circular(24) : Radius.zero,
            ),
          ),
          child: Text(
            item.titulo,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1D192B),
              letterSpacing: 0.15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 14, 18, 8),
          child: Text(
            item.conteudo,
            style: const TextStyle(
              fontSize: 15,
              height: 1.45,
              color: Color(0xFF2C2735),
            ),
          ),
        ),
      ],
    );
  }
}
