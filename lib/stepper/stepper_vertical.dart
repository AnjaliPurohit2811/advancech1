
import 'package:advancech1/utils/global.dart';
import 'package:advancech1/stepper/components/contact_detail.dart';
import 'package:advancech1/stepper/components/personal_detail.dart';
import 'package:flutter/material.dart';
import 'package:advancech1/utils/global.dart';




class VerticalStepper extends StatefulWidget {
  const  VerticalStepper({super.key});

  @override
  State< VerticalStepper> createState() =>
      _VerticalStepperState();
}

class _VerticalStepperState extends State< VerticalStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Stepper App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Theme(
        data: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.teal,
                backgroundColor: Colors.white
            )),
        child: Stepper(
          // elevation: 1,
          type: StepperType.horizontal,
          currentStep: Globalvar.stepperIndex,
          onStepContinue: () {
            setState(() {
              if (Globalvar.stepperIndex== 2) {
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
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.done,
                size: 20,
                color: Colors.white,
              ),
            );
          },
          steps:  [
            Step(
                title: const Text('Personal'),
                content: personal_detail()
            ),
            Step(
                title: const Text('Contact'),
                content: contact_details()
            ),
            const Step(
              title: Text('update'),
              content: TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
