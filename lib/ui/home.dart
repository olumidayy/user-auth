import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userauth/ui/signin.dart';
import 'auth.dart';

class Home extends StatefulWidget {
  final FirebaseUser user;

  Home(this.user);
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {

  AuthProvider auth = AuthProvider();

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
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 28.0),
                child: Text(
                  '${widget.user.displayName != null ? widget.user.displayName : widget.user.email}',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: Colors.deepPurple[900],
                        letterSpacing: .5,
                        fontWeight: FontWeight.bold,
                        fontSize: 29),
                  ),
                ),
              ),

              SizedBox(height:300),

              Padding(
                padding: const EdgeInsets.all(28.0),
                child: RaisedButton(
                  color: Colors.deepPurple[900],
                  onPressed: (){
                    auth.logOut();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
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

