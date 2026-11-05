import 'package:flutter/material.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:defesa_mulher_app/services/NavigationService.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  Widget _gerarBotaoTelaInicial(IconData icone, String titulo, String rota) {
    return Container(
      width: 350,
      height: 64,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          NavigationService.navigateTo('/$rota');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFCFBBE8),
          foregroundColor: const Color(0xFF1D192B),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 24, color: const Color(0xFF1D192B)),
            const SizedBox(width: 14),
            Flexible(
              child: Text(
                titulo,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1D192B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isHome: true,
      titulo: 'Olá, vamos te ajudar!',
      subtitulo: 'O que você precisa neste momento?',
      conteudos: [
        const SizedBox(height: 12),
        _gerarBotaoTelaInicial(
          Icons.location_on,
          'Onde buscar ajuda',
          'ajuda',
        ),
        _gerarBotaoTelaInicial(
          Icons.shield_outlined,
          'Direitos e Proteção',
          'direito',
        ),
        _gerarBotaoTelaInicial(
          Icons.front_hand,
          'Sobre os tipos de violência',
          'tipo_violencia',
        ),
        _gerarBotaoTelaInicial(
          Icons.chat_bubble_outline,
          'Prevenção e Orientação',
          'prevencao',
        ),
      ],
    );
  }
}
