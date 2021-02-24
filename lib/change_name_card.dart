import 'package:flutter/material.dart';
import 'package:flutterEssential/bg.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyBg(),
        SizedBox(
          height: 37,
        ),
        Text(
          myText,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 37,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
                hintText: "Enter Something",
                border: OutlineInputBorder(),
                labelText: "Enter Your Name"),
          ),
        ),
      ],
    );
  }
}
