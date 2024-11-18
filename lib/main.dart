import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_theme.dart';
import 'main_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProviderTheme(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final providerTheme = Provider.of<ProviderTheme>(context);
    return MaterialApp(
      theme: providerTheme.currentTheme,
      home: const MainScreen(),
    );
  }
}
