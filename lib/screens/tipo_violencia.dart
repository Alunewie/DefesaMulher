import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:defesa_mulher_app/models/violencia_item.dart';

import '../custom_widgets/section_card.dart';

class TipoViolencia extends StatefulWidget {
  const TipoViolencia({super.key});

  @override
  State<TipoViolencia> createState() => _TipoViolenciaState();
}

class _TipoViolenciaState extends State<TipoViolencia> {
  ViolenciaItem? _itemSelecionado;

  @override
  Widget build(BuildContext context) {

    if (_itemSelecionado != null) {
      return _buildTelaDetalhe(_itemSelecionado!);
    }

    return CustomScaffold(
      titulo: 'Tipos de violência',
      icone: Icons.front_hand,
      proximaRota: '/prevencao',
      conteudos: [
        _buildGridOpcoes(),
      ],
    );
  }

  Widget _buildGridOpcoes() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Wrap(
        spacing: 16,
        runSpacing: 18,
        alignment: WrapAlignment.center,
        children: ViolenciaItem.lista.map((item) {
          return _buildCardTipoViolencia(item);
        }).toList(),
      ),
    );
  }

  Widget _buildCardTipoViolencia(ViolenciaItem item) {
    return InkWell(
      onTap: () {
        setState(() {
          _itemSelecionado = item;
        });
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 155,
        height: 128,
        decoration: BoxDecoration(
          color: const Color(0xFFE2DDE8),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [

            Expanded(
              child: Center(
                child: Icon(
                  item.icone,
                  size: 44,
                  color: const Color(0xFF503769),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 42,
              decoration: const BoxDecoration(
                color: Color(0xFFCFBBE8),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                item.titulo,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1D192B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTelaDetalhe(ViolenciaItem item) {
    return CustomScaffold(
      espacamento: 0,
      textoVoltar: 'Voltar para as opções',
      onVoltar: () {
        setState(() {
          _itemSelecionado = null;
        });
      },
      conteudos: [
        SectionCard(
          itens: [
            SectionItem(
              titulo: item.titulo,
              icone: item.icone,
              conteudo: item.definicao,
            ),
            SectionItem(titulo: 'Exemplos',
                tituloCentralizado: false,
                conteudo: item.exemplos.map((exemplo) {
              return '• $exemplo\n';
            }).join(''))
          ],
          fonte: item.fonte,
          linkSaibaMais: item.link,
        ),
      ],
    );
  }
}
