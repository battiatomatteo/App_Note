import 'package:flutter/material.dart';
import 'LogIn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //? static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //! title: _title,
      debugShowCheckedModeBanner:
          false, //* per nascondere la scritta debug in alto a destra
      home: Login(),
    );
  }
}