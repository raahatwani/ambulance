// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, depend_on_referenced_packages, camel_case_types, unnecessary_late, unused_import

import 'package:flutter/material.dart';
import 'register.dart';
import 'Regular_BLS1.dart';
import 'Widgets/EmergencyType.dart';
import 'constants/fontConstants.dart';

late String heading = 'Select Emergency';

class EmergencySelectionPage extends StatefulWidget {
  @override
  State<EmergencySelectionPage> createState() => _EmergencySelectionPageState();
}

class _EmergencySelectionPageState extends State<EmergencySelectionPage> {
  bool showBLS = true;
  bool showALS = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ambu-Go',
            style: kTextFont,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Colors.red.shade100,
        child: ListView(
          children: [
            ListTile(
              title: Center(child: Text('Ambu-Go')),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => register()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 30),
              ),
              child: const Text('Register'),
            ),
            ElevatedButton(
              onPressed: () {
                // Share.share('com.example.amb');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 30),
              ),
              child: const Text('Share the App'),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Text(heading, style: kHeadingFont),
            SizedBox(height: 100),

            // ALS Button

            showALS
                ? EmergencyType(
                    buttonText: 'Emergency Case (ALS)',
                    function: () {
                      setState(() {
                        heading = 'Type Of Emergency';
                        showBLS = false;
                        showALS = false;
                      });
                    },
                  )
                : SizedBox(height: 20),
            SizedBox(height: 40),

            // BLS Button

            showBLS
                ? EmergencyType(
                    buttonText: 'Regular Case (BLS)',
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => RegularBLSOne()));
                    },
                  )
                : ALS_Category(),

            SizedBox(height: 40),
          ],
        ),
      )),
    );
  }
}

class ALS_Category extends StatelessWidget {
  const ALS_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmergencyType(
          buttonText: 'Accident',
          function: () {},
        ),
        SizedBox(height: 40),
        EmergencyType(
          buttonText: 'Patient',
          function: () {},
        ),
      ],
    );
  }
}
