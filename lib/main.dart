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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF880E4F)),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('App Defesa da Mulher - Estrutura Inicial (Grupo 12)'),
        ),
      ),
    );
  }
}
