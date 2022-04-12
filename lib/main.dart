import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: ss(),
    );
  }
}

class ss extends StatefulWidget {
  @override
  _ssState createState() => _ssState();
}

class _ssState extends State<ss> {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}
