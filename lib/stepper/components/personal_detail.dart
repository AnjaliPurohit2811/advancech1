import 'package:flutter/material.dart';

Column personal_detail() {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
            label: Text('Enter your first name ',style: TextStyle(color: Colors.grey),),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(15))
            )
        ),
      ),
      SizedBox(height: 20,),
      TextField(
        decoration: InputDecoration(
            label: Text('Enter your Last name ',style: TextStyle(color: Colors.grey),),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(15))
            )
        ),
      ),
    ],
  );
}