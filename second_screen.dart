import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String Medicine_name;
  String Prescribed_Doctor;
  SecondScreen(Key? key, this.Medicine_name, String Prescribed_Doctor) : super(key: key), Prescribed_Doctor = Prescribed_Doctor;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Quote of the day"),
      ),
      body: Center(
        child: Column(children: [
          Text(Medicine_name),
          Text(Prescribed_Doctor),
        ]),
      ),
    ));
  }
}
