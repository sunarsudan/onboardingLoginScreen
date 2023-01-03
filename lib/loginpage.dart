import 'package:flutter/material.dart';

import 'main.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  GlobalKey<FormState> keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: "hero")));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 34,
            )),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            children: [
              Form(
                key: keys,
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Required";
                          }
                        },
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: "Enter your username or Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 50),
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Required";
                          }
                        },
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: "Enter your  Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                    MaterialButton(
                      autofocus: true,
                      onPressed: () {
                        if (keys.currentState!.validate()) {
                          print("ok");
                        } else {
                          print("sorry");
                        }
                      },
                      child: Text(
                        "Login Account",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      height: 60,
                      minWidth: 300,
                      color: Colors.red,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
