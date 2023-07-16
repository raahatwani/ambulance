// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ambulance/Regular_BLS1.dart';
import 'package:ambulance/constants/fontConstants.dart';

class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RadioListTile(
          title: Text('Male'),
          value: 1,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = 1;
            });
          },
        ),
        RadioListTile(
          title: Text('Female'),
          value: 2,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = 2;
            });
          },
        ),
        RadioListTile(
          title: Text('Other'),
          value: 3,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = 3;
            });
          },
        ),
      ],
    );
  }
}

class FormRadioButton extends StatefulWidget {
  int value, selectedValue = 0;
  String radioText;
  FormRadioButton({required this.value, required this.radioText});

  @override
  State<FormRadioButton> createState() => _FormRadioButtonState();
}

class _FormRadioButtonState extends State<FormRadioButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: devW * 0.40,
      child: RadioListTile(
        title: Text(
          widget.radioText,
          style: kTextFont.copyWith(),
        ),
        value: widget.value,
        groupValue: widget.selectedValue,
        onChanged: (value) {
          setState(() {
            widget.selectedValue = widget.value;
          });
        },
      ),
    );
  }
}
