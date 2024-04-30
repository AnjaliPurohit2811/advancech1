
import 'package:advancech1/counter/provider/counter_provider.dart';
import 'package:advancech1/counter/view/counter_screen.dart';
import 'package:advancech1/stepper/stepper_horizontal.dart';
import 'package:advancech1/stepper/stepper_vertical.dart';

import 'package:advancech1/theme/theme_screen.dart';
import 'package:advancech1/themeui/provider/change_theme_provider.dart';
import 'package:advancech1/themeui/view/theme_ui_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),child: ThemeChange(),));
}




