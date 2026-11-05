import 'package:flutter_test/flutter_test.dart';
import 'package:project_maintenance_dart_mobile/app/app.dart';

void main() {
  testWidgets(
    'Application renders its public foundation without a network session',
    (tester) async {
      await tester.pumpWidget(const LiberuApp());
      expect(find.text('Maintenance'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}
