import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class aboutus extends StatelessWidget {
  const aboutus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: const Text(
            'About US',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
            child: Column(children: <Widget>[
          SizedBox(
            height: 30,
          ),
          SizedBox(
              height: 400,
              width: 500,
              child: Lottie.network(
                  "https://assets2.lottiefiles.com/packages/lf20_ljotbiif.json")),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "This hotel listing application is a global platform that empowers entrepreneurs and small businesses with hotels and homes by providing full stack technology that increases earnings and eases operations. Bringing affordable and trusted accommodation that guests can book instantly.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
        ])));
  }
}
