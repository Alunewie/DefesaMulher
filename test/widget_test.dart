import 'package:flutter_test/flutter_test.dart';
import 'package:defesa_mulher_app/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const DefesaMulherApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
