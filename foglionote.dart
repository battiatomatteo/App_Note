// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Foglionote extends StatefulWidget {
   const Foglionote(BuildContext context, {Key? key}) : super(key: key);
  //BuildContext prova = context as BuildContext;
  @override
  State<Foglionote> createState() => _Foglionote();
}

class _Foglionote extends State<Foglionote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('prova'), //Column(
        //children: <Widget>[
        //Text('ciao mondo'),
        //]
        //),
      ),
    );
  }
}
