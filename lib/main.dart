import 'package:flutter/material.dart';
import 'package:onboar/loginpage.dart';
import 'package:onboar/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 225, 225),
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/hand.webp",
                height: 90,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Benven",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Health is priority ? we will make your\n health better  Health is wealth ",
            style: TextStyle(fontFamily: "preeti", fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30.0,
          ),
          Image.asset(
            "assets/doctorimage.webp",
            height: 300,
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                  color: Color.fromARGB(255, 80, 192, 84),
                  height: 50,
                  minWidth: 170,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginpage()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  )),
              MaterialButton(
                  color: Colors.blue,
                  height: 50,
                  minWidth: 170,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signuppage()));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  )),
            ],
          )
        ],
      )),
    );
  }
}
