import 'package:flutter/material.dart';


class Sett extends StatefulWidget {
  const Sett( {Key? key}) : super(key: key);

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
        title: const Text('Settings', 
        style: TextStyle(
              fontSize: 30,
             
            ),),
        //centerTitle: true, // per centrare titolo
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: <Widget>[
            Positioned(
              
              child: FlatButton(
                  onPressed: () {
                    //evento quando si clicca 'account settings'
                  },
                  child: Text(
                    'Account settings',
                    style: TextStyle(
                         fontSize: 25),
                  ),
                ),
          ),
          SizedBox(
              height: 80,
            ),
            Positioned( 
              top: 40,
              child: FlatButton(
                onPressed: () {
                  //evento quando si clicca 'tema'
                },
                child: Text(
                  'Tema',
                  style: TextStyle(
                       fontSize: 25),
                ),
              )
            ),
            SizedBox(
              height: 80,
            ),
        ],
      ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}