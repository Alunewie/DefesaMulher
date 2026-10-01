import 'package:defesa_mulher_app/screens/ajuda.dart';
import 'package:defesa_mulher_app/screens/direito.dart';
import 'package:defesa_mulher_app/screens/inicio.dart';
import 'package:defesa_mulher_app/screens/prevencao.dart';
import 'package:defesa_mulher_app/screens/tipo_violencia.dart';
import 'package:defesa_mulher_app/services/NavigationService.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DefesaMulherApp());
}

class DefesaMulherApp extends StatelessWidget {
  const DefesaMulherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Defesa da Mulher - Grupo 12',
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF880E4F)),
        useMaterial3: true,
      ),
      routes: {
        '/home': (context) => const Inicio(),
        '/ajuda': (context) => const Ajuda(),
        '/direito': (context) => const Direito(),
        '/tipo_violencia': (context) => const TipoViolencia(),
        '/prevencao': (context) => const Prevencao(),
      },
      initialRoute: '/home',
    );
  }
}
