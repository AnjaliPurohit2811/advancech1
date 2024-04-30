import 'package:advancech1/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3C5B6F),
          title: Text('Counter App' ,style: TextStyle(color: Colors.white, fontSize: 30),),
          centerTitle: true,
        ),
        body: Center(
          child: Text(Provider.of<CounterProvider>(context , listen: true).count.toString() , style: TextStyle(color: Colors.black , fontSize: 35 , fontWeight: FontWeight.w500),),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff3C5B6F),
          onPressed: () {
            Provider.of<CounterProvider>(context , listen: false).increment();

        },child: Icon(Icons.add , color: Colors.white, ),),
      ),
    );
  }
}
