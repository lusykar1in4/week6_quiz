import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_theme.dart';
import 'settings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerTheme = Provider.of<ProviderTheme>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen',
            style: TextStyle(fontFamily: providerTheme.currentFont)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a sample text',
              style: TextStyle(
                  fontSize: 24, fontFamily: providerTheme.currentFont),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()),
                );
              },
              child: Text(
                'Go to Settings',
                style: TextStyle(fontFamily: providerTheme.currentFont),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
