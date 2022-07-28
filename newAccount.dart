// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'navbar.dart';

class NewAc extends StatefulWidget {
  const NewAc({Key? key}) : super(key: key);

  @override
  State<NewAc> createState() => _NewAc();
}

class _NewAc extends State<NewAc> {
  @override
  Widget build(BuildContext context) {
    double height2 = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 60,
        title: Text(
          "Boat Note",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 209, 56, 236),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              /*child:LabelElement(
                labelText:'Crea qui il tuo account',
              )*/),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter valid Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText:
                    true, //rende non leggibile la password dopo aver scritto un carattere
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 30),
              child: TextField(
                obscureText:
                    true, //rende non leggibile la password dopo aver scritto un carattere
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Conferma Password',
                    hintText: 'Confermare la password'),
              ),
            ),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 56, 236),
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MyStatefulWidget()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: height2 - 570,
            ),
          ],
        ),
      ),
    );
  }
}
