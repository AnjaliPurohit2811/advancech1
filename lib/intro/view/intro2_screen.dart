import 'package:advancech1/intro/view/intro3_screen.dart';
import 'package:flutter/material.dart';

class Intro2Screen extends StatelessWidget {
  const Intro2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15),
              child: Image.asset(
                'asset/img/woman.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 40),
              child: Text(
                'Explore the options.  ',
                style: TextStyle(
                    fontSize: 30, color: Color(0xff4D3AC9), letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Lorem Ipsum is simply dummy text of\n the printing and typesetting industry.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Skip',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Intro3Screen(),
                      ));
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFDCE31),
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.brown,
                            ),
                          ),
                          Text(
                            'Next',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff4D3AC9)),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade200, shape: BoxShape.circle),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Color(0xff4D3AC9), shape: BoxShape.circle),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade200, shape: BoxShape.circle),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
