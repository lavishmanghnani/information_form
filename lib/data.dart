import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SecondScreen extends StatefulWidget {

  const SecondScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  String? fname = "";
  String? email = "";
  String? password = "";
  bool data = false;


  @override
  void initState(){
    super.initState();
    getData();
  }
  getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    fname = pref.getString('nameKey');
    password = pref.getString('passwordKey');
    email = pref.getString('emailKey');
    print(pref.getString('nameKey'));
    data = true;
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Name : ' +fname.toString()),
            Text('Email : ' +email.toString()),
            Text('Password : ' +password.toString()),
          ],
        )),
      ),
    );
  }
}
