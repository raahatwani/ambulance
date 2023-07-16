// ignore_for_file: prefer_const_constructors

import 'package:ambulance/constants/fontConstants.dart';
import 'package:flutter/material.dart';

class Submit extends StatelessWidget {
  const Submit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Details Submitted!', style: kTextFont,),
      ),
    );
  }
}