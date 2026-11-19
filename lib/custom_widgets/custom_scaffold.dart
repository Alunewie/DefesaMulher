import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../services/NavigationService.dart';

class CustomScaffold extends StatelessWidget {
  final String? titulo;
  final String? subtitulo;
  final List<Widget> conteudos;
  final bool isHome;
  final IconData? icone;
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
    this.icone,
    this.proximaRota,
    this.textoVoltar,
    this.onVoltar,
    this.espacamento,
  });

  void _abrirTelefone() async {
    await launchUrl(Uri.parse('tel:180'));
  }

  void _aoClicarSair(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.popUntil(context, (route) => route.isFirst);
    } else {
      SystemNavigator.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(129, 93, 168, 1),
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        leading: Navigator.canPop(context)
            ? IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Colors.white, size: 28),
          onPressed: () => onVoltar != null ? onVoltar!() : _aoClicarSair(context),
        )
            : null,
        backgroundColor: const Color.fromRGBO(129, 93, 168, 1),
        title:
            Text(!isHome ? 'Voltar' : 'Sinal Lilás',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                SystemNavigator.pop();
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.logout, size: 35, color: Colors.white),
                  Text(
                    'Sair',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: SizedBox.expand(
        child: CustomPaint(
          painter: const CurvedBorderPainter(),
          child: Center(
            child: Column(
              spacing: espacamento ?? 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
               !isHome ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    icone != null ? Icon(icone!, color: const Color.fromRGBO(75, 88, 69, 1), size: 25) : Container(),
                    Text(
                      titulo ?? '',
                      style: const TextStyle(
                          color: Color.fromRGBO(75, 88, 69, 1),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ) : Container(),
                ...conteudos],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
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
