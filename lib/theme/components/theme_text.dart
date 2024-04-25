import 'package:flutter/material.dart';

 themeText(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 40),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 40),
          child: Text('Yo man!' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w500),),
        ),
        Text("It's a simple example of a dark theme")
      ],
    ),
  );
}