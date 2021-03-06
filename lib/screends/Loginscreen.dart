import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trustwash_tech/screends/customtextfield.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/1.png'), fit: BoxFit.cover),
          gradient: LinearGradient(
              colors: [Colors.blue[400], Colors.blue],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Sign in with your account',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextField(
                issecured: false,
                hint: '    Email/Phone',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '   Password',
                issecured: true,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery.of(context).size.width,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => Navigation()));},
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.grey, fontSize: 22),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'OR',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('images/fb.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('images/google.png'))
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't Have an Accout ?",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
