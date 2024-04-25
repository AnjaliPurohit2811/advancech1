import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

Widget  dark_Theme({required themeapp})
{
  return CupertinoButton( onPressed: () {
    themeapp();
    isDark = false;
  },
  child: Container(
    height: 100,
    width: double.infinity,
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: (!isDark) ? Colors.redAccent : Colors.amber,
      borderRadius: BorderRadius.circular(15)
    ),
    child: Text('Dark Theme' , style: TextStyle(fontSize: 25, color: isDark ? Colors.white : Colors.black),),
  ) );
}