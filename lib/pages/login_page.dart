import 'package:flutter/material.dart';
import 'package:flutterEssential/bg.dart';
import 'package:flutterEssential/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            MyBg(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Your Name",
                                    labelText: "UserName"),
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Enter Your Password",
                                    labelText: "Password"),
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 23,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Text("SignIn"),
                          color: Colors.amberAccent,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
