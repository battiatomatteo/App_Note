//! ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:testvscode/LogIn.dart';

class Sett extends StatefulWidget {
  const Sett({Key? key}) : super(key: key);

  @override
  State<Sett> createState() => _Sett();
}

class _Sett extends State<Sett> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 60,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        //* centerTitle: true, // per centrare titolo
        backgroundColor: Color.fromARGB(255, 73, 22, 82),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: FlatButton(
                onPressed: () {
                  //? evento quando si clicca 'account settings'
                },
                child: Text(
                  'Account settings',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            //* Divider(color: Colors.black), //crea una linea di divisione
            //https://docs.flutter.dev/release/breaking-changes/buttons
            Positioned(
                top: 40,
                child: FlatButton(
                  onPressed: () {
                    //? evento quando si clicca 'tema'
                  },
                  child: Text(
                    'Tema',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ),
            
            Positioned(
                top: 80,
                child: FlatButton(
                  onPressed: () {
                    //? evento quando si clicca 'tema'
                  },
                  child: Text(
                    'Note preferite',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ),
            
            Positioned(
                top: 120,
                child: FlatButton(
                  onPressed: () {
                    //? evento quando si clicca 'tema'
                  },
                  child: Text(
                    'Assistenza',
                    style: TextStyle(fontSize: 25),
                  ),
                )),
            Positioned(
                top: 160,
                child: FlatButton(
                  onPressed: () {
                    //? evento quando si clicca 'tema'
                  },
                  child: Text(
                    'Visita il nostro sito',
                    style: TextStyle(fontSize: 25),
                  ),
                )),
                Positioned(
                top: 200,
                child: FlatButton(
                  onPressed: () {
                    //? evento quando si clicca 'tema'
                  },
                  child: Text(
                    'Informazioni',
                    style: TextStyle(fontSize: 25),
                  ),
                )),
            Positioned(
                top: 240,
                child: FlatButton(
                  //* togliere la freccia per non dare la possibilità all'utente di tornare indietro !!!
                  onPressed: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Login())),
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 25),
                  ),
                )),
            SizedBox(
              height: 280,
              width: 300,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
