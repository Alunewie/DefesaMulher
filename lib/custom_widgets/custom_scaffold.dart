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

  void _abrirNoticias(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: const Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: const BorderSide(color: Color(0xFFA7C262), width: 3),
          ),
          title: const Text(
            'Decisões sobre as medidas protetivas pelo Supremo Tribunal Federal (STF)',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF503769),
            ),
          ),
          content: const SingleChildScrollView(
              child: Column(
            spacing: 5,
            children: [
              Text('''
O Supremo Tribunal Federal (STF) decidiu por unanimidade  que as medidas protetivas de urgência da Lei Maria da Penha (Lei n° 11.340/2006) podem ser aplicadas a qualquer forma de violência contra a mulher baseada no gênero, mesmo quando ocorrer fora do contexto doméstico, familiar ou afetivo.

A decisão foi firmada no julgamento do Tema 1.412 de Repercussão Geral (ARE 1537713).
              '''),
              Text('Principais pontos da decisão:', style: TextStyle(
                fontWeight: FontWeight.bold
              )),
              Text(
                '''
- Abrangência da Proteção: A medida vale para situações de violência de gênero ocorridas em espaços comunitários, profissionais, institucionais, sociais, educacionais, digitais ou políticos (incluindo casos de perseguição, assédio e violência política de gênero).

- Vínculo com o agressor: Não é mais obrigatório exisitr relação íntima de afeto, coabitação ou parentesco entre a vítima e o agressor. O que define a aplicação é a condição feminina e a motivação de gênero.

- Juízo incompetente: Se um pedido de medida protetiva for apresentado a um juiz que não seja o competente para o caso, o magistrado deve analisar o pedido de urgência imediatamente (se houver risco à ofendida) e, depois, encaminhar os autos ao juízo especializado (como a Vara de Violência contra a Mulher) para ratificação.

- Concessão por policiais: Permanece válida a possibilidade de concessão de medidas protetivas por delegados de polícia ou agentes policiais em situações de urgência e risco iminente. 
                '''

              )
            ],
          )),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text(
                'Fechar',
                style: TextStyle(
                  color: Color(0xFF503769),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(129, 93, 168, 1),
      appBar: AppBar(
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        leadingWidth: double.infinity,
        elevation: 52,
        title: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: const BoxDecoration(
            color: Color(0xFF815DA8),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(24),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF503769),
                blurRadius: 6,
                spreadRadius: -2,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Navigator.canPop(context) && !isHome
                      ? IconButton(
                          icon: const Icon(Icons.arrow_back,
                              color: Colors.white, size: 28),
                          onPressed: () => onVoltar != null
                              ? onVoltar!()
                              : _aoClicarSair(context),
                        )
                      : IconButton(
                          icon: const Icon(Icons.notifications_none,
                              color: Colors.white, size: 28),
                          onPressed: () => _abrirNoticias(context),
                        ),
                  Text(
                    !isHome ? 'Voltar' : 'Veja as últimas atualizações',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
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
        ),
        backgroundColor: const Color.fromRGBO(129, 93, 168, 1),
        bottom: isHome
            ? PreferredSize(
                preferredSize: const Size(100, 80),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Image.asset('assets/logo_completo.png'),
                ))
            : PreferredSize(
                preferredSize: const Size(0, 0),
                child: Container(),
              ),
      ),
      body: SizedBox.expand(
        child: CustomPaint(
          painter: const CurvedBorderPainter(),
          child: Column(
            spacing: espacamento ?? 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isHome
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        icone != null
                            ? Icon(icone!,
                                color: const Color.fromRGBO(75, 88, 69, 1),
                                size: 25)
                            : Container(),
                        Text(
                          titulo ?? '',
                          style: const TextStyle(
                              color: Color.fromRGBO(75, 88, 69, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  : Container(),
              ...conteudos
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
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
                        heroTag: 'sobreFab',
                        onPressed: () {
                          NavigationService.navigateTo('/sobre');
                        },
                        backgroundColor: const Color.fromRGBO(80, 55, 105, 1),
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
                    heroTag: 'ajudaFAB',
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
    this.fillColor = const Color.fromRGBO(255, 255, 255, 1.0),
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
