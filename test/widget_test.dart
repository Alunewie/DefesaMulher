import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:defesa_mulher_app/custom_widgets/section_card.dart';
import 'package:defesa_mulher_app/main.dart';
import 'package:defesa_mulher_app/screens/ajuda.dart';
import 'package:defesa_mulher_app/screens/direito.dart';
import 'package:defesa_mulher_app/screens/inicio.dart';
import 'package:defesa_mulher_app/screens/prevencao.dart';
import 'package:defesa_mulher_app/screens/sobre.dart';
import 'package:defesa_mulher_app/screens/tipo_violencia.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const DefesaMulherApp());
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.text('Olá, vamos te ajudar!'), findsOneWidget);
  });

  testWidgets('Tela Inicial renders all 4 main buttons and actions', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Inicio()));

    expect(find.text('Onde buscar ajuda'), findsOneWidget);
    expect(find.text('Direitos e Proteção'), findsOneWidget);
    expect(find.text('Sobre os tipos de violência'), findsOneWidget);
    expect(find.text('Prevenção e Orientação'), findsOneWidget);
    expect(find.text('Sobre o aplicativo'), findsOneWidget);
    expect(find.text('AJUDA'), findsOneWidget);
    expect(find.text('Sair'), findsOneWidget);
  });

  testWidgets('Ajuda renders SectionCard with navigation buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Ajuda()));

    expect(find.text('Onde Buscar Ajuda'), findsOneWidget);
    expect(find.text('Voltar'), findsOneWidget);
    expect(find.text('Próximo'), findsOneWidget);
    expect(find.byType(SectionCard), findsOneWidget);
    expect(find.text('Central de Atendimento à Mulher Ligue 180'), findsOneWidget);
  });

  testWidgets('Direito renders SectionCard with navigation buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Direito()));

    expect(find.text('Direitos e Proteção'), findsOneWidget);
    expect(find.text('Voltar'), findsOneWidget);
    expect(find.text('Próximo'), findsOneWidget);
    expect(find.byType(SectionCard), findsOneWidget);
    expect(find.text('Lei Maria da Penha'), findsOneWidget);
  });

  testWidgets('TipoViolencia renders grid and opens detail on tap', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: TipoViolencia()));

    expect(find.text('Sobre os tipos de violência'), findsOneWidget);
    expect(find.text('Violência Física'), findsOneWidget);
    expect(find.text('Violência Psicológica'), findsOneWidget);
    expect(find.text('Violência Sexual'), findsOneWidget);
    expect(find.text('Violência Moral'), findsOneWidget);
    expect(find.text('Violência Patrimonial'), findsOneWidget);
    expect(find.text('Violência Vicária'), findsOneWidget);

    // Toca no card de Violência Física
    await tester.tap(find.text('Violência Física'));
    await tester.pumpAndSettle();

    // Deve exibir a tela de detalhe com "Voltar para as opções"
    expect(find.text('Voltar para as opções'), findsOneWidget);
    expect(find.text('Espancamento'), findsOneWidget);
    expect(find.text('+ Saiba Mais'), findsOneWidget);

    // Clica em voltar para as opções
    await tester.tap(find.text('Voltar para as opções'));
    await tester.pumpAndSettle();

    expect(find.text('Sobre os tipos de violência'), findsOneWidget);
  });

  testWidgets('Prevencao renders SectionCard with content', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Prevencao()));

    expect(find.text('Prevenção e Orientação'), findsOneWidget);
    expect(find.text('Voltar'), findsOneWidget);
    expect(find.byType(SectionCard), findsOneWidget);
    expect(find.text('O Ciclo de Violência'), findsOneWidget);
  });

  testWidgets('Sobre renders options and version', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Sobre()));

    expect(find.text('Sobre o aplicativo'), findsOneWidget);
    expect(find.text('Política de Privacidade'), findsOneWidget);
    expect(find.text('Fontes'), findsOneWidget);
    expect(find.text('Créditos'), findsOneWidget);
    expect(find.text('Versão 1.0'), findsOneWidget);
  });
}
