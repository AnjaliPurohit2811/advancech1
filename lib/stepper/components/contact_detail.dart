
import 'package:flutter/material.dart';

Column contact_details() {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
            label: Text('Email ',style: TextStyle(color: Colors.grey),),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            prefixIcon: Icon(Icons.email,color: Colors.grey,)
        ),
      ),
      SizedBox(height: 30,),
      TextField(
        decoration: InputDecoration(
          label: Text('Enter your Address ',style: TextStyle(color: Colors.grey),),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          prefixIcon: Icon(Icons.home,color: Colors.grey,),
          contentPadding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
        ),
      ),
      SizedBox(height: 30,),
      TextField(
        decoration: InputDecoration(
            label: Text('Enter Phone number  ',style: TextStyle(color: Colors.grey),),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            prefixIcon: Icon(Icons.phone,color: Colors.grey,)
        ),
      ),
    ],
  );
}
