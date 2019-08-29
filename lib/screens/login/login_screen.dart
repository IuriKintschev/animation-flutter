import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.supervisor_account,
                        color: Colors.black,
                        size: 180,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            inputField(
                              hint: "Username",
                              obscure: false,
                              icon: Icons.person_outline,
                            ),
                            inputField(
                              hint: "Password",
                              obscure: true,
                              icon: Icons.lock_outline,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  inputField({String hint, bool obscure, IconData icon}) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
      )),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding:
              EdgeInsets.only(top: 30, right: 30, bottom: 30, left: 5),
        ),
      ),
    );
  }
}