import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  void _abrirTelefone() async {
    await launchUrl(Uri.parse('tel:190'));
  }

  Widget _gerarBotaoTelaInicial(IconData icone, String titulo) {
    return (ElevatedButton(
        onPressed: () {},
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

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: const Color(0xFF880E4F),
        actions: const [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
          )
        ],
      ),
      body: Center(
        child: Column(
          spacing: 35,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _gerarBotaoTelaInicial(Icons.help, 'Onde buscar ajuda'),
            _gerarBotaoTelaInicial(Icons.balance, 'Direitos e Proteção'),
            _gerarBotaoTelaInicial(Icons.back_hand, 'Tipos de violência'),
            _gerarBotaoTelaInicial(
                Icons.book_outlined, 'Prevenção e Orientação'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        extendedPadding: const EdgeInsets.all(25),
          onPressed: () {
            _abrirTelefone();
          },
          label: const Row(
            children: [
              Icon(Icons.phone_in_talk,
                  size: 50, color: const Color(0xFF880E4F)),
              Text(
                'AJUDA',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          )),
    ));
  }
}
