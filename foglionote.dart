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
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 60,
        title: Text("Boat Note",
        style: TextStyle(
                  fontSize: 30,
                ),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 209, 56, 236),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //titolo
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                style: TextStyle(fontSize: 40),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                    labelStyle: TextStyle(fontSize: 40),
                    hintText: 'inserire un titolo'),
              ),
            ),
            //testo
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                style: TextStyle(fontSize: 220),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Text',
                    labelStyle: TextStyle(fontSize: 20),
                    hintText: 'inserire un testo'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
