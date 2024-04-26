import 'package:advancech1/utils/global.dart';
import 'package:flutter/material.dart';

class HorizontalStepper extends StatefulWidget {
  const HorizontalStepper({super.key});

  @override
  State<HorizontalStepper> createState() => _HorizontalStepperState();
}

int startingIndex = 0;
int endingIndex = 2;

class _HorizontalStepperState extends State<HorizontalStepper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter Stepper Demo'),
        ),
        body: Theme(
          data: ThemeData(
              colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
          ),
          child: Stepper(
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
                if(Globalvar.stepperIndex==2)
                  {
                    Globalvar.stepperIndex--;
                  }
                else
                  {
                    Globalvar.stepperIndex==0;
                  }
              });
            },
            currentStep: Globalvar.stepperIndex,
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
            steps:
            const [
              Step(
                  title: Text('Account'),
                  content: TextField(
                    decoration: InputDecoration(
                      hintText: 'Account',
                    ),
                  )),
              Step(
                  title: Text('Address'),
                  content: TextField(
                    decoration: InputDecoration(hintText: 'Address'),
                  )),
              Step(
                  title: Text('Mobile'),
                  content: TextField(
                    decoration: InputDecoration(hintText: 'Mobile Number'),
                  )),
            ],
          ),
          
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
        },child: Icon(Icons.list),),
      ),
    );
  }
}
