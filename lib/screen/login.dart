import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SingleChildScrollView to make The Image go all the way to the top.
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Image(
              height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              image: AssetImage('assets/images/login_background.jpg'),
              fit: BoxFit.cover,
            )
          ],
        ),
      )),
    );
  }
}
