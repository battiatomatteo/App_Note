//! ignore_for_file: prefer_const_constructors, unused_label

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime? selectedDate;
  final Color viola = Color.fromARGB(255, 209, 56, 236);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              selectedDate == null
                  ? "Your selected date will appear here"
                  : DateFormat.yMMMMd('en_US').format(selectedDate!).toString(),
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: viola),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => selectDate(context),
              style: ElevatedButton.styleFrom(
                primary: viola, //* Background color
                onPrimary: Colors.black, //* Text Color (Foreground color)
              ),
              child: const Text(
                'Pick date',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future selectDate(BuildContext context) async {
    DateTime initialDate = DateTime.now();
    DateTime firstDate = DateTime(DateTime.now().year - 10);
    DateTime lastDate = DateTime(DateTime.now().year + 10);

    final date = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: viola, //* parte superiore
                onPrimary: Colors.black, //* testo parte superiore
                onSurface: Colors.black, //* numeri
              ),
            ),
            child: child!,
          );
        });

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }
}
