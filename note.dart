// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'foglionote.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: //AppBar(
      //title: const Text('Notes'),
      //backgroundColor: Color.fromARGB(255, 77, 236, 56),
      //),
      body: Center(
          child: Stack(
        children: <Widget>[
          Positioned(
            right: 20,
            bottom: 20,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 209, 56, 236),
              //collegamento al foglio delle note
              onPressed: () =>{ Navigator.push(context, MaterialPageRoute(builder: (_) => Foglionote(context))),
                }, //Foglionote(),
              child: Icon(Icons.plus_one_rounded),
            ),
          )
        ],
      ),
      )
    );
  }
}



//container
//https://www.html.it/pag/378335/container-widget-i-single-child-layout/
//https://www.html.it/pag/384770/stack-widget-per-la-sovrapposizione-di-widget/