// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:ambulance/Regular_BLS1.dart';
import 'package:ambulance/constants/fontConstants.dart';

class FormInput extends StatelessWidget {
  String hintText;
  FormInput({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          width: devW * 0.44,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
                hintText: hintText,
                enabledBorder: kBorderDesign,
                focusedBorder: kBorderDesign),
          ),
        ));
  }
}

class TextWidget extends StatelessWidget {
  String hintText;
  TextWidget({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: devW * 0.90,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: kBorderDesign,
            focusedBorder: kBorderDesign),
      ),
    );
  }
}
