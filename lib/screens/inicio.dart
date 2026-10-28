import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:defesa_mulher_app/services/NavigationService.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  Widget _gerarBotaoTelaInicial(IconData icone, String titulo, String rota) {
    return (ElevatedButton(
        onPressed: () {
          _abrirRota(rota);
        },
        style:
            const ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size(350, 60)),
              backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(168, 138, 237, 0.42))
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Icon(icone, size: 18, color: const Color.fromRGBO(29, 25, 43, 1)),
            Text(titulo,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color.fromRGBO(29, 25, 43, 1)))
          ],
        )));
  }

  void _abrirRota(String rota) {
    NavigationService.navigateTo('/$rota');
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(conteudos: [
      _gerarBotaoTelaInicial(Icons.groups, 'Onde buscar ajuda', 'ajuda'),
      _gerarBotaoTelaInicial(Icons.shield, 'Direitos e Proteção', 'direito'),
      _gerarBotaoTelaInicial(Icons.front_hand, 'Tipos de violência', 'tipo_violencia'),
      _gerarBotaoTelaInicial(
          Icons.comment, 'Prevenção e Orientação', 'prevencao'),
    ], titulo: 'Olá, vamos te ajudar!', subtitulo: 'O que você precisa neste momento?');
  }
}
