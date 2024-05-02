


import 'package:advancech1/contactpage/view/contact_page.dart';
import 'package:advancech1/counter/provider/counter_provider.dart';
import 'package:advancech1/counter/view/counter_screen.dart';
import 'package:advancech1/intro/provider/intro_provider.dart';
import 'package:advancech1/intro/view/intro1_screen.dart';
import 'package:advancech1/stepper/stepper_horizontal.dart';
import 'package:advancech1/stepper/stepper_vertical.dart';

import 'package:advancech1/theme/theme_screen.dart';
import 'package:advancech1/themeui/provider/change_theme_provider.dart';
import 'package:advancech1/themeui/view/theme_ui_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'intro/view/intro2_screen.dart';
import 'intro/view/intro3_screen.dart';
import 'intro/provider/intro_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => IntroProvider(),
    ),
  ],child: ContactPage(),));

}

class MyIntro extends StatefulWidget {
  const MyIntro({super.key});

  @override
  State<MyIntro> createState() => _MyIntroState();
}

class _MyIntroState extends State<MyIntro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Provider.of<IntroProvider>(context , listen: true).isClicked ? HorizontalStepper() : Intro1Screen(),
    );
  }
}






