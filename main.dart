import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/home_screen.dart';

void main() => runApp(const NilamApp());

class NilamApp extends StatelessWidget {
  const NilamApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'AI Nilam Smart',
    debugShowCheckedModeBanner: false,
    supportedLocales: const [Locale('en'), Locale('ta')],
    localizationsDelegates: GlobalMaterialLocalizations.delegates,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF16834A)),
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xFFF5F8F5),
    ),
    home: const HomeScreen(),
  );
}
