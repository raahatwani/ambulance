// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:ambulance/EmergencySelect.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EmergencySelectionPage();
  }
}
