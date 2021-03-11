import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hisaab/SignupPage.dart';

class LoginPage extends StatelessWidget {
  Future<bool> _onBackPressed(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Are you sure?"),
          content: Text("You are going to exit the application"),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text("NO"),
            ),
            FlatButton(
              onPressed: () => exit(0),
              child: Text("YES"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () => _onBackPressed(context),
        child: Container(
          alignment: Alignment.center,
          color: Colors.lightGreen[200],
          child: Stack(
            children: [
              _inputFrame(context),
            ],
          ),
        ),
      ),
    );
  }

  Container _inputFrame(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 368,
      margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("Log In"),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 26),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.mail,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 26),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.lock,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 8),
            child: new RaisedButton(
              textColor: Colors.white,
              color: Colors.lightGreen[200],
              padding: EdgeInsets.only(top: 15, bottom: 15),
              onPressed: () => {},
              child: Text(
                "Log In",
              ),
            ),
          ),
          Container(
            alignment: Alignment(-1.0, -1.0),
            margin: EdgeInsets.only(left: 16),
            child: new RaisedButton(
              textColor: Colors.white,
              color: Colors.lightBlue[200],
              padding: EdgeInsets.only(top: 12, bottom: 12),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: Text(
                "Sign Up",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
