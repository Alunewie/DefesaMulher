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
            const ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(350, 50))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icone, size: 20),
            Text(titulo,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
          ],
        )));
  }

  void _abrirRota(String rota) {
    NavigationService.navigateTo('/$rota');
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(conteudos: [
      _gerarBotaoTelaInicial(Icons.help, 'Onde buscar ajuda', 'ajuda'),
      _gerarBotaoTelaInicial(Icons.balance, 'Direitos e Proteção', 'direito'),
      _gerarBotaoTelaInicial(Icons.back_hand, 'Tipos de violência', 'tipo_violencia'),
      _gerarBotaoTelaInicial(
          Icons.book_outlined, 'Prevenção e Orientação', 'prevencao'),
    ], titulo: 'Salve vidas!',);
  }
}
