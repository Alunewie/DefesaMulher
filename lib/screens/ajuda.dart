import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({super.key});


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(conteudos: [
       Container(
         height: 456,
         width: 362,
         decoration: BoxDecoration(
           color: Color.fromRGBO(226, 221, 232, 1),
           borderRadius: BorderRadius.all(Radius.circular(20))
         ),
       )
    ], titulo: 'Onde Buscar Ajuda', ocultarBotaoSobre: true);
  }
}
