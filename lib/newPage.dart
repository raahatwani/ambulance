// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, use_key_in_widget_constructors, camel_case_types, sort_child_properties_last

import 'package:ambulance/Widgets/EmergencyType.dart';
import 'package:ambulance/submit.dart';
import 'package:flutter/material.dart';
import 'package:ambulance/constants/fontConstants.dart';

class newPage extends StatefulWidget {
  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  bool _checkboxOne = false;
  bool _checkboxTwo = false;
  bool _checkboxThree = false;
  bool _checkboxFour = false;
  bool _checkboxFive = false;
  bool _checkboxSix = false;
  bool _checkboxSeven = false;
  bool _checkboxEight = false;
  bool _checkboxNine = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(
            children: [
              Text(
                'AMBULANCE BOOKING FORM',
                style: kTextFont,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    ' Clinical condition of patient',
                    style: kTextFont,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  style: kTextFont,
                  decoration: InputDecoration(
                      hintText: 'Type here...',
                      enabledBorder: kBorderDesign,
                      focusedBorder: kBorderDesign),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Please check all that apply', style: kTextFont),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxOne,
                      onChanged: (value) {
                        setState(() {
                          _checkboxOne = !_checkboxOne;
                        });
                      }),
                  Column(
                    children: [
                      Text('Paramedic/active', style: kTextFont),
                      Text('assistance', style: kTextFont),
                    ],
                  ),
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxTwo,
                      onChanged: (value) {
                        setState(() {
                          _checkboxTwo = !_checkboxTwo;
                        });
                      }),
                  Column(
                    children: [
                      Text('No clinical', style: kTextFont),
                      Text('assistance', style: kTextFont)
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxThree,
                      onChanged: (value) {
                        setState(() {
                          _checkboxThree = !_checkboxThree;
                        });
                      }),
                  Column(
                    children: [
                      Text('Infectious', style: kTextFont),
                      Text('disease', style: kTextFont),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxFour,
                      onChanged: (value) {
                        setState(() {
                          _checkboxFour = !_checkboxFour;
                        });
                      }),
                  Column(
                    children: [
                      Text('Depresses', style: kTextFont),
                      Text('immunity', style: kTextFont)
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxFive,
                      onChanged: (value) {
                        setState(() {
                          _checkboxFive = !_checkboxFive;
                        });
                      }),
                  Column(
                    children: [
                      Text('Others', style: kTextFont),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Mobility', style: kTextFont),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxSix,
                      onChanged: (value) {
                        setState(() {
                          _checkboxSix = !_checkboxSix;
                        });
                      }),
                  Text('Stretcher Patient', style: kTextFont),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxSeven,
                      onChanged: (value) {
                        setState(() {
                          _checkboxSeven = !_checkboxSeven;
                        });
                      }),
                  Text('Wheelchair Patient', style: kTextFont),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxEight,
                      onChanged: (value) {
                        setState(() {
                          _checkboxEight = !_checkboxEight;
                        });
                      }),
                  Text('Walking Patient', style: kTextFont),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      side: kBorderSide,
                      value: _checkboxNine,
                      onChanged: (value) {
                        setState(() {
                          _checkboxNine = !_checkboxNine;
                        });
                      }),
                  Text('other', style: kTextFont),
                ],
              ),
              EmergencyType(
                  buttonText: 'Submit',
                  function: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Submit()));
                  })
            ],
          )),
        ),
      ),
    );
  }
}
