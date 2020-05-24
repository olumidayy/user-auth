import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
//  final FirebaseUser user;
//
//  Home(this.user);
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: <Widget>[
//              Logo(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 28.0),
                child: Text(
                  'Welcome',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: Colors.deepPurple[900],
                        letterSpacing: .5,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(28.0),
                child: RaisedButton(
                  color: Colors.deepPurple[900],
                  onPressed: (){},
                  child: Text(
                    'Sign out',
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.white,
                          letterSpacing: .5,
                          fontSize: 17.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

