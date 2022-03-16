import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_test_flutter/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Example test', () {
    testWidgets('Can load', (WidgetTester tester) async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(const MyApp());
      await tester.pumpAndSettle();
      expect(find.text('Flutter Demo Home Page'), findsOneWidget);
    });
  });
}
