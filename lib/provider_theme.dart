import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProviderTheme extends ChangeNotifier {
  final List<ThemeData> _themes = [
    ThemeData(
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.blue[50],
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
    ),
    ThemeData(
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.green[50],
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
    ),
    ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.red[50],
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
    ),
  ];

  final List<String> _fonts = ['Roboto', 'Lobster', 'Oswald'];

  int _themeIndex = 0;
  int _fontIndex = 0;

  // Getter untuk Theme dan Font
  ThemeData get currentTheme {
    return _themes[_themeIndex].copyWith(
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.getFont(
          _fonts[_fontIndex], // Menggunakan font dari Google Fonts
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: _fonts[_fontIndex] == 'Oswald'
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
        bodyMedium: GoogleFonts.getFont(
          _fonts[_fontIndex], // Menggunakan font dari Google Fonts
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: _fonts[_fontIndex] == 'Oswald'
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  String get currentFont => _fonts[_fontIndex];

  int get themeIndex => _themeIndex;
  int get fontIndex => _fontIndex;
  List<String> get fonts => _fonts;

  void changeTheme(int index) {
    _themeIndex = index;
    notifyListeners();
  }

  void changeFont(int index) {
    _fontIndex = index;
    notifyListeners();
  }
}
