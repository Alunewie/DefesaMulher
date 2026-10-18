import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomScaffold extends StatelessWidget {
  final String titulo;
  final String? subtitulo;
  final List<Widget> conteudos;
  final bool? ocultarBotaoSobre;

  const CustomScaffold({super.key, required this.conteudos, required this.titulo, this.ocultarBotaoSobre, this.subtitulo});

  void _abrirTelefone() async {
    await launchUrl(Uri.parse('tel:190'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(129, 93, 168, 1),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titulo, style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
            subtitulo != null ? Text(subtitulo!, style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400
            ),) : Container()
          ],
        ),
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
      ),  //rgba(244, 240, 221, 1)
      body: Container(
        decoration: const  BoxDecoration(
            color: Color.fromRGBO(244, 240, 221, 1),
          border: Border.symmetric(horizontal: BorderSide(
            color: Color.fromRGBO(167, 194, 98, 1),
            width: 20,
          ))
        ),
        child: Center(
          child: Column(
            spacing: 35,
            mainAxisAlignment: MainAxisAlignment.center,
            children: conteudos,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
        color:  const Color.fromRGBO(129, 93, 168, 1),
      ),
      floatingActionButton: (ocultarBotaoSobre == null || ocultarBotaoSobre == false) ?  Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: (){}, backgroundColor: const Color.fromRGBO(80, 55, 105, 1),
          child:  const Icon(Icons.help_outline_sharp,
              size:27, color: Colors.white)),
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
                      size:27, color: Colors.white),
                  Text(
                    'AJUDA',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w400, color: Colors.white),
                  )
                ],
              ))
        ],
      ) :  FloatingActionButton.extended(
          backgroundColor: const Color.fromRGBO(80, 55, 105, 1),
          extendedPadding: const EdgeInsets.all(25),
          onPressed: () {
            _abrirTelefone();
          },
          label: const Row(
            spacing: 15,
            children: [
              Icon(Icons.phone_in_talk,
                  size:27, color: Colors.white),
              Text(
                'AJUDA',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w400, color: Colors.white),
              )
            ],
          )),
    );
  }

}