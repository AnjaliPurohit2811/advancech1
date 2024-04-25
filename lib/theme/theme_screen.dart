import 'package:advancech1/theme/components/dark_theme.dart';
import 'package:advancech1/theme/components/light_theme.dart';
import 'package:advancech1/theme/components/theme_text.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     void themeapp()
     {
       setState(() {

       });
     }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: (isDark) ? ThemeMode.light : ThemeMode.dark,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 150),
          child: Container(
            height: 600,
            width: 500,
            child: Card(
              child: Column(
                children: [
                  themeText(),
                  light_Theme(themeapp: themeapp),
                  dark_Theme(themeapp: themeapp),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
