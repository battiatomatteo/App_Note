import 'dart:html';

import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        backgroundColor: Color.fromARGB(255, 77, 236, 56),
      ),
      body: const Center(
        child:Text(
          'prova'
          
          ),
      ),
    );
  }
}
