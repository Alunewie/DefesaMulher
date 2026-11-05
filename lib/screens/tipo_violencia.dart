import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:defesa_mulher_app/models/violencia_item.dart';

class TipoViolencia extends StatefulWidget {
  const TipoViolencia({super.key});

  @override
  State<TipoViolencia> createState() => _TipoViolenciaState();
}

class _TipoViolenciaState extends State<TipoViolencia> {
  ViolenciaItem? _itemSelecionado;

  Future<void> _abrirLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {

    if (_itemSelecionado != null) {
      return _buildTelaDetalhe(_itemSelecionado!);
    }

    return CustomScaffold(
      titulo: 'Tipos de violência',
      categoriaIcone: Icons.front_hand,
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
              color: Colors.black.withOpacity(0.06),
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
    final double larguraTela = MediaQuery.sizeOf(context).width;
    final double larguraCard = larguraTela > 400 ? 362 : larguraTela - 32;

    return CustomScaffold(
      textoVoltar: 'Voltar para as opções',
      onVoltar: () {
        setState(() {
          _itemSelecionado = null;
        });
      },
      conteudos: [
        Container(
          width: larguraCard,
          decoration: BoxDecoration(
            color: const Color(0xFFE2DDE8),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: const BoxDecoration(
                  color: Color(0xFFCFBBE8),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item.icone, size: 28, color: const Color(0xFF1D192B)),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        item.titulo,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1D192B),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18, 16, 18, 12),
                child: Text(
                  item.definicao,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.45,
                    color: Color(0xFF2C2735),
                  ),
                ),
              ),

              if (item.exemplos.isNotEmpty) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: item.exemplos.map((exemplo) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '• ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF503769),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                exemplo,
                                style: const TextStyle(
                                  fontSize: 14.5,
                                  height: 1.35,
                                  color: Color(0xFF2C2735),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],

              const SizedBox(height: 14),
            ],
          ),
        ),

        const SizedBox(height: 20),

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

        const SizedBox(height: 14),

        SizedBox(
          width: larguraCard,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.fonte,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C2735),
                ),
              ),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: () => _abrirLink(item.link),
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
      ],
    );
  }
}
