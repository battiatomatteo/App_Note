import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'navbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 10),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('../android/asset/1024.png')
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email/Username',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,//rende non leggibile la password dopo aver scritto un carattere
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            FlatButton(
              onPressed: (){
                //evento quando si clicca 'forgot password'
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Color.fromARGB(255, 209, 56, 236), fontSize: 15),
              ),
            ),
            Container(
              height: 40,
              width: 150,
              
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 56, 236), borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyStatefulWidget()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            //collegamento alla pagina web di registrazion
            GestureDetector(
                child: Text("Accedi al nostro sito web", style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)),
                onTap: () async {
                  const url = 'https://github.com/';
                  if (await canLaunch(url)) launch(url);
                },
              )
          ],
        ),
      ),
    );
  }
}


//New User? Create Account