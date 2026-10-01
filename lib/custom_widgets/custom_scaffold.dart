import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomScaffold extends StatelessWidget {
  final String titulo;
  final List<Widget> conteudos;
  const CustomScaffold({super.key, required this.conteudos, required this.titulo});

  void _abrirTelefone() async {
    await launchUrl(Uri.parse('tel:190'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: const Color(0xFF880E4F),
        title: Text(titulo, style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),),
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
          children: conteudos,
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
    );
  }

}