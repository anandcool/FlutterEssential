import 'package:flutter/material.dart';

import '../change_name_card.dart';
import '../drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me!!!";

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.6),
        child: SingleChildScrollView(
          child: Card(
            child:
                ChangeNameCard(myText: myText, nameController: _nameController),
          ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myText = _nameController.text;
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
