import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome!!!",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Container(
            width: 122,
            height: 122,
            alignment: Alignment.center,
            color: Colors.red,
          ),
          Container(
            width: 122,
            height: 122,
            alignment: Alignment.center,
            color: Colors.green,
          ),
          Container(
            width: 122,
            height: 122,
            alignment: Alignment.center,
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
