import 'package:flutter/material.dart';
import 'package:ihsani_app/counter/counter.dart';
import 'package:ihsani_app/l10n/l10n.dart';
import 'package:ihsani_app/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: IhsaniTheme.light(),
      darkTheme: IhsaniTheme.dark(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
