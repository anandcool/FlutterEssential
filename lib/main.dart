import 'package:flutter/material.dart';

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
        child: Text("Awesome App2"),
        alignment: Alignment.center,
        color: Colors.amberAccent,
      ),
    );
  }
}
