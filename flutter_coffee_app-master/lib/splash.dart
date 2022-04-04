import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/main.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';
import 'login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginSignin()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.network(
                      "https://assets10.lottiefiles.com/packages/lf20_okbg8ec7.json")),
              SizedBox(height: 20),
              Text(
                "home",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text("lavada"),
            ],
          )),
    );
  }
}
