// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types

import 'package:ambulance/Widgets/EmergencyType.dart';
import 'package:ambulance/submit.dart';
import 'package:flutter/material.dart';
import 'constants/fontConstants.dart';

class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person_2_outlined,
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                    style: kTextFont,
                    decoration: InputDecoration(
                        enabledBorder: kBorderDesign,
                        focusedBorder: kBorderDesign,
                        label: Text('Name'),
                        suffixIcon: Icon(Icons.person),
                        suffixIconColor: Colors.deepOrange)),
                SizedBox(
                  height: 30,
                ),
                TextField(
                    style: kTextFont,
                    decoration: InputDecoration(
                        enabledBorder: kBorderDesign,
                        focusedBorder: kBorderDesign,
                        label: Text('Email'),
                        suffixIcon: Icon(Icons.mail),
                        suffixIconColor: Colors.deepOrange)),
                SizedBox(
                  height: 30,
                ),
                TextField(
                    style: kTextFont,
                    decoration: InputDecoration(
                        enabledBorder: kBorderDesign,
                        focusedBorder: kBorderDesign,
                        label: Text(
                          'Password',
                        ),
                        suffixIcon: Icon(Icons.verified_user_sharp),
                        suffixIconColor: Colors.deepOrange)),
                SizedBox(
                  height: 30,
                ),
                TextField(
                    style: kTextFont,
                    decoration: InputDecoration(
                        enabledBorder: kBorderDesign,
                        focusedBorder: kBorderDesign,
                        label: Text('Confirm Password'),
                        suffixIcon: Icon(Icons.check),
                        suffixIconColor: Colors.deepOrange)),
                SizedBox(
                  height: 30,
                ),
                TextField(
                    style: kTextFont,
                    decoration: InputDecoration(
                        enabledBorder: kBorderDesign,
                        focusedBorder: kBorderDesign,
                        label: Text('Phone Number'),
                        suffixIcon: Icon(Icons.phone),
                        suffixIconColor: Colors.deepOrange)),
                Row(
                  children: [
                    Checkbox(
                        fillColor:
                            MaterialStatePropertyAll(Colors.deepOrangeAccent),
                        side: kBorderSide,
                        value: _checkbox,
                        onChanged: (value) {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        }),
                    Column(
                      children: [
                        Text('Agree with Terms and Conditions',
                            style: kTextFont),
                      ],
                    ),
                  ],
                ),
                EmergencyType(
                    buttonText: 'SAVE',
                    function: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Submit()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
