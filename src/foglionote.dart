// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Foglionote extends StatefulWidget {
  const Foglionote(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<Foglionote> createState() => _Foglionote();
}

class _Foglionote extends State<Foglionote> {
  @override
  Widget build(BuildContext context) {
    double height2 = MediaQuery.of(context).size.height;
    int rows = ((height2.toInt() - 210) ~/ 25);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 60,
        title: Stack(children: [
          Positioned(
            child: const Text(
              '         Boat Note               ',
              style: TextStyle(
                fontSize: 30,
                
              ),
            ),
          ),
          Positioned(
            right: 0,
            width: 35,
            height: 35,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 209, 56, 236),
              //bottone salvataggio
              /*onPressed: () =>{ Navigator.push(context, MaterialPageRoute(builder: (_) => )),}, //Foglionote(),*/
              onPressed:
                  () {}, //si toglie quando si inizia a guardare la parte di salvatggio e si usa il codice in linea 34-35
              child: Icon(Icons.save),
            ),
          )
        ]),
        centerTitle: true,
        
        backgroundColor: Color.fromARGB(255, 209, 56, 236),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //titolo
            Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: TextField(
                    style: TextStyle(fontSize: 30),
                    maxLines: 1,
                    decoration: InputDecoration.collapsed(
                        hintText: "Enter your title here"),
                  ),
                )),
            //testo
            Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    minLines: rows,
                    maxLines: rows, //or null
                    decoration: InputDecoration.collapsed(
                        hintText: "Enter your text here;   line max 10"),
                  ),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
