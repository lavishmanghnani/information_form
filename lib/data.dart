import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String? name;
  final String? email;
  final String? password;

  const SecondScreen({
    Key? key,
    this.name,
    this.email,
    this.password,
  }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Name : ' + widget.name!),
            Text('Email : ' + widget.email!),
            Text('Password : ' + widget.password!)
          ],
        )),
      ),
    );
  }
}
