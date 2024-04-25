
import 'package:advancech1/screens/themescreen/theme_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ThemeApp());
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: ThemeScreen(),
    );
  }
}