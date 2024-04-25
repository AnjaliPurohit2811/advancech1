import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 150),
        child: Container(
          height: 600,
          width: 400,
          // alignment: Alignment.center,
          child:  Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Yo Man ! ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                  child: Text(
                    "it's a simple example of \n dark theme",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Light Theme',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Dark Theme',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}