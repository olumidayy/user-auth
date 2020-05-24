import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[900],
        body: SafeArea(
          child: ListView(
            children: <Widget>[
//              Logo(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 28.0),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) => value.isEmpty ? 'please fill' : null,
                  onChanged: (str){
                    setState(() {
                      email = str;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: ' email',
                      hintStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 12)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (str){
                    setState(() {
                      password = str;
                    });
                  },
                  validator: (value) => value.isEmpty ? 'please fill' : null,
                  decoration: InputDecoration(
                      hintText: ' password..',
                      hintStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 12)),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: (){},
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.deepPurple[900],
                          letterSpacing: .5,
                          fontSize: 17.5),
                    ),
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't yet have an account?", style: TextStyle(color: Colors.white.withOpacity(0.45))),
                    SizedBox(width: 10),
                    Text("Sign Up", style: TextStyle(color: Colors.white))
                  ]
              )
            ],
          ),
        ));
  }
}

