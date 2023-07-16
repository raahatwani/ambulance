// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:ambulance/constants/fontConstants.dart';

TextEditingController dateController = TextEditingController();

class DateWidget extends StatefulWidget {
  DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  @override
  void initState() {
    super.initState();
    dateController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: dateController,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.red,
            ),
            labelText: "Enter Date",
            hintStyle: kTextFont),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2025));
          if (pickedDate != null) {
            setState(() {
              dateController.text = pickedDate.toString();
            });
          } else {
            print("Date is not selected");
          }
        });
  }
}
