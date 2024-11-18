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

  @override
  Widget build(BuildContext context) {
    final providerTheme = Provider.of<ProviderTheme>(context);

    return MaterialApp(
      title: 'Flutter App',
      theme:
          providerTheme.currentTheme, // Gunakan tema dan font yang sudah diubah
      home: const MainScreen(),
    );
  }
}
