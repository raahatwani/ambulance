// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:ambulance/constants/fontConstants.dart';

import 'Widgets/BLSCalendar.dart';
import 'Widgets/BLSRadio.dart';
import 'Widgets/BLSTextField.dart';
import 'Widgets/EmergencyType.dart';
import 'newPage.dart';

var devW, devH, textScaleFactor;

class RegularBLSOne extends StatefulWidget {
  const RegularBLSOne({super.key});

  @override
  State<RegularBLSOne> createState() => _RegularBLSOneState();
}

class _RegularBLSOneState extends State<RegularBLSOne> {
  @override
  Widget build(BuildContext context) {
    devW = MediaQuery.of(context).size.width;
    devH = MediaQuery.of(context).size.height;
    textScaleFactor = devW * 0.06;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: devH*0.90,
            width: devW * 0.90,
            child: ListView(
              children: [
                Center(
                  child: Text(
                    'AMBULANCE BOOKING FORM',
                    style: kHeadingFont.copyWith(fontSize: textScaleFactor),
                  ),
                ),
                Text(
                  'Patient Name',
                  style: kTextFont,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FormInput(hintText: '  First Name'),
                    SizedBox(
                      width: 5,
                    ),
                    FormInput(hintText: '  Last Name')
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: devW * 0.90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gender',
                        style: kTextFont,
                      ),
                      Row(
                        children: [
                          FormRadioButton(value: 1, radioText: 'Male'),
                          FormRadioButton(value: 2, radioText: 'Female'),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'Home Address',
                  style: kTextFont,
                ),
                SizedBox(
                  height: 7,
                ),
                TextWidget(
                  hintText: '  Address Line 1',
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FormInput(hintText: '  City'),
                    SizedBox(
                      width: 5,
                    ),
                    FormInput(hintText: '  Pincode')
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Contact No.',
                  style: kTextFont,
                ),
                TextWidget(hintText: '  +91 91112345687'),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Transportation is a',
                  style: kTextFont,
                ),
                Row(
                  children: [
                    FormRadioButton(value: 1, radioText: 'Single Journey'),
                    FormRadioButton(value: 2, radioText: 'Return Journey'),
                  ],
                ),
                Text(
                  'Transportation Date and Time',
                  style: kTextFont,
                ),
                DateWidget(),
                SizedBox(
                  height: 7,
                ),
                EmergencyType(
                    buttonText: 'Next',
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => newPage()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
