import 'package:estilizacao_componentes/components/status.dart';
import 'package:estilizacao_componentes/data/bank_inherited.dart';
import 'package:estilizacao_componentes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('My widget has text "Spent" ', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BankInherited(
          child: Home(),
        ),
      ),
    );
    final spentFinder = find.text('Spent');
    expect(spentFinder, findsOneWidget);
  });

  testWidgets('Finds a LinearProgressIndicator', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(
        child: Home(),
      ),
    ));
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets('Finds a AccountStatus', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(
        child: Home(),
      ),
    ));
    expect(find.byKey(Key('testKey')), findsOneWidget);
  });
}
