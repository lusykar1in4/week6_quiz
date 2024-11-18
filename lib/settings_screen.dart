import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerTheme = Provider.of<ProviderTheme>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontFamily: providerTheme.currentFont),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pilihan Theme
            Text(
              'Select Theme',
              style: TextStyle(
                fontSize: 18,
                fontFamily: providerTheme.currentFont,
              ),
            ),
            ...List.generate(3, (index) {
              return ListTile(
                title: Text(
                  'Theme ${index + 1}',
                  style: TextStyle(fontFamily: providerTheme.currentFont),
                ),
                leading: Radio<int>(
                  value: index,
                  groupValue: providerTheme.themeIndex,
                  onChanged: (int? value) {
                    if (value != null) {
                      providerTheme.changeTheme(value);
                    }
                  },
                ),
              );
            }),

            const SizedBox(height: 20),

            // Pilihan Font
            Text(
              'Select Font',
              style: TextStyle(
                fontSize: 18,
                fontFamily: providerTheme.currentFont,
              ),
            ),
            ...List.generate(3, (index) {
              return ListTile(
                title: Text(
                  providerTheme.fonts[index],
                  style: TextStyle(fontFamily: providerTheme.fonts[index]),
                ),
                leading: Radio<int>(
                  value: index,
                  groupValue: providerTheme.fontIndex,
                  onChanged: (int? value) {
                    if (value != null) {
                      providerTheme.changeFont(value);
                    }
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
