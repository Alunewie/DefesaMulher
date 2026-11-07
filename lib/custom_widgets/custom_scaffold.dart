import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../services/NavigationService.dart';

class CustomScaffold extends StatelessWidget {
  final String? titulo;
  final String? subtitulo;
  final List<Widget> conteudos;
  final bool isHome;
  final bool isOculta;
  final IconData? categoriaIcone;
  final String? proximaRota;
  final String? textoVoltar;
  final VoidCallback? onVoltar;
  final double? espacamento;

  const CustomScaffold({
    super.key,
    required this.conteudos,
    this.titulo,
    this.subtitulo,
    this.isHome = false,
    this.isOculta = false,
    this.categoriaIcone,
    this.proximaRota,
    this.textoVoltar,
    this.onVoltar,
    this.espacamento,
  });

  void _abrirTelefone() async {
    await launchUrl(Uri.parse('tel:190'));
  }

  void _aoClicarSair(BuildContext context) {
    if (onVoltar != null) {
      onVoltar!();
    } else if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      SystemNavigator.pop();
    }
  }

  void _toggleExibirConteudo(BuildContext context) {
    if (isOculta) {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, '/home');
      }
    } else {
      NavigationService.navigateTo('/oculta');
    }
  }

  Widget _buildSwitch() {
    final bool ativo = !isOculta;

    return Container(
      width: 52,
      height: 28,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: ativo
            ? const Color(0xFF503769)
            : const Color(0xFF6E4C91).withOpacity(0.6),
        borderRadius: BorderRadius.circular(14),
      ),
      child: AnimatedAlign(
        duration: const Duration(milliseconds: 200),
        alignment: ativo ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          width: 22,
          height: 22,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: ativo
              ? const Icon(
                  Icons.check,
                  size: 14,
                  color: Color(0xFF503769),
                )
              : null,
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: const BoxDecoration(
        color: Color(0xFF815DA8),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color:  Color(0xFF503769),
            blurRadius: 6,
            spreadRadius: -2,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => _toggleExibirConteudo(context),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildSwitch(),
                const SizedBox(height: 4),
                const Text(
                  'Exibir Conteúdo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => _aoClicarSair(context),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.logout, size: 28, color: Colors.white),
                SizedBox(height: 4),
                Text(
                  'Sair',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeHeaderTitles() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 20, 28, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo ?? 'Olá, vamos te ajudar!',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: 1.15,
            ),
          ),
          if (subtitulo != null && subtitulo!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              subtitulo!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(129, 93, 168, 1),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTopBar(context),
            if (isHome) _buildHomeHeaderTitles() else const Padding(padding: EdgeInsets.fromLTRB(28, 20, 28, 16)),
            Expanded(
              child: CustomPaint(
                painter: const CurvedBorderPainter(),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                      vertical: 24, horizontal: 16),
                  child: Column(
                    spacing: espacamento ?? 15,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (!isHome) ...[
                        if (textoVoltar != null)
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton.icon(
                              onPressed: onVoltar ?? () => Navigator.pop(context),
                              icon: const Icon(Icons.arrow_back,
                                  color: Color(0xFF503769)),
                              label: Text(
                                textoVoltar!,
                                style: const TextStyle(
                                  color: Color(0xFF503769),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        if (categoriaIcone != null) ...[
                          Icon(
                            categoriaIcone,
                            size: 38,
                            color: const Color(0xFF3B334C),
                          ),
                        ],
                        if (titulo != null && titulo!.isNotEmpty) ...[
                          Text(
                            titulo!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF3B334C),
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ],
                      ...conteudos,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        color: const Color.fromRGBO(129, 93, 168, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: (isHome == true)
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          NavigationService.navigateTo('/sobre');
                        },
                        backgroundColor: const Color.fromRGBO(104, 79, 129, 1),
                        child: const Icon(
                          Icons.help_outline_sharp,
                          size: 27,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Sobre o aplicativo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton.extended(
                    backgroundColor: const Color.fromRGBO(80, 55, 105, 1),
                    extendedPadding: const EdgeInsets.all(25),
                    onPressed: () {
                      _abrirTelefone();
                    },
                    label: const Row(
                      spacing: 15,
                      children: [
                        Icon(Icons.phone_in_talk,
                            size: 27, color: Colors.white),
                        Text(
                          'AJUDA',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : (isOculta
              ? null
              : FloatingActionButton.extended(
                  backgroundColor: const Color.fromRGBO(80, 55, 105, 1),
                  extendedPadding: const EdgeInsets.all(25),
                  onPressed: () {
                    _abrirTelefone();
                  },
                  label: const Row(
                    spacing: 15,
                    children: [
                      Icon(Icons.phone_in_talk, size: 27, color: Colors.white),
                      Text(
                        'AJUDA',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )
                    ],
                  ),
                )),
    );
  }
}

class CurvedBorderPainter extends CustomPainter {
  final Color fillColor;
  final Color borderColor;
  final double borderWidth;
  final double radius;

  const CurvedBorderPainter({
    this.fillColor = const Color.fromRGBO(244, 240, 221, 1),
    this.borderColor = const Color.fromRGBO(167, 194, 98, 1),
    this.borderWidth = 14.0,
    this.radius = 38.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final largura = size.width + 15;
    final altura = size.height;
    final raio = radius;

    final rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, largura, altura),
      topLeft: Radius.circular(raio),
      bottomRight: Radius.circular(raio),
    );

    final fillPaint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;
    canvas.drawRRect(rrect, fillPaint);

    canvas.save();
    canvas.clipRRect(rrect);

    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth * 2
      ..strokeCap = StrokeCap.butt
      ..isAntiAlias = true;

    final topPath = Path()
      ..moveTo(0, raio)
      ..arcToPoint(Offset(raio, 0), radius: Radius.circular(raio))
      ..lineTo(largura, 0);
    canvas.drawPath(topPath, borderPaint);

    final bottomPath = Path()
      ..moveTo(largura, altura - raio)
      ..arcToPoint(Offset(largura - raio, altura),
          radius: Radius.circular(raio))
      ..lineTo(0, altura);
    canvas.drawPath(bottomPath, borderPaint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CurvedBorderPainter oldDelegate) {
    return oldDelegate.fillColor != fillColor ||
        oldDelegate.borderColor != borderColor ||
        oldDelegate.borderWidth != borderWidth ||
        oldDelegate.radius != radius;
  }
}
