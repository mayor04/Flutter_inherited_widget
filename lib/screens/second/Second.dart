import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Click me'),
        ),
      ),
    );
  }
}
