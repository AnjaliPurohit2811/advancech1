import 'package:advancech1/utils/global.dart';
import 'package:flutter/material.dart';
class VerticalStepper extends StatefulWidget {
  const VerticalStepper({super.key});

  @override
  State<VerticalStepper> createState() => _VerticalStepperState();
}

class _VerticalStepperState extends State<VerticalStepper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter Stepper Demo' , style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
        body: Theme(data: ThemeData( colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
        ),), child: Stepper(
          elevation: 1,
          type: StepperType.horizontal,
          currentStep: Globalvar.stepperIndex,
          onStepContinue: () {
            setState(() {
              if (Globalvar.stepperIndex==2) {
                Globalvar.stepperIndex = 2;
              } else {
                Globalvar.stepperIndex++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (Globalvar.stepperIndex == 2) {
                Globalvar.stepperIndex--;
              } else {
               Globalvar.stepperIndex = 0;
              }
            });
          },
          stepIconBuilder: (stepIndex, stepState) {
            return const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 20,
              ),
            );
          },
          steps: const [
            Step(
              title: Text('Personal'),
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Enter Your Fist Name',
                      prefixIcon: Icon(Icons.person , color: Colors.grey,),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Last Name',
                      prefixIcon: Icon(Icons.person , color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text('Contact'),
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email , color: Colors.grey),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.home , color: Colors.grey),
                      hintText: 'Address',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      prefixIcon: Icon(Icons.phone , color: Colors.grey),
                      hintText: 'Mobile No',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text('Upload'),
              content: Text(
                'Updated!!',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
