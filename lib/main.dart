import 'package:flutter/material.dart';
import 'package:defesa_mulher_app/screens/ajuda.dart';
import 'package:defesa_mulher_app/screens/direito.dart';
import 'package:defesa_mulher_app/screens/inicio.dart';
import 'package:defesa_mulher_app/screens/oculta.dart';
import 'package:defesa_mulher_app/screens/prevencao.dart';
import 'package:defesa_mulher_app/screens/sobre.dart';
import 'package:defesa_mulher_app/screens/tipo_violencia.dart';
import 'package:defesa_mulher_app/services/NavigationService.dart';

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF815DA8),
          primary: const Color(0xFF815DA8),
          secondary: const Color(0xFF503769),
        ),
        scaffoldBackgroundColor: const Color(0xFF815DA8),
        useMaterial3: true,
      ),
      routes: {
        '/home': (context) => const Inicio(),
        '/ajuda': (context) => const Ajuda(),
        '/direito': (context) => const Direito(),
        '/tipo_violencia': (context) => const TipoViolencia(),
        '/prevencao': (context) => const Prevencao(),
        '/sobre': (context) => const Sobre(),
        '/oculta': (context) => const TelaOculta(),
      },
      initialRoute: '/home',
    );
  }
}
