import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/signupdummy.dart';

import 'logindummy.dart';

class getstarted extends StatefulWidget {
  const getstarted({Key key}) : super(key: key);

  @override
  State<getstarted> createState() => _getstartedState();
}

class _getstartedState extends State<getstarted> {
  double _headingTop = 100;
  var _headingColor = Color(0xFFB40284A);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 1000),
              margin: EdgeInsets.only(
                top: _headingTop,
              ),
              child: Text(
                "Learn Free",
                style: TextStyle(color: _headingColor, fontSize: 28),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "We make learning easy. Join Tvac Studio to learn flutter for free on YouTube.",
                textAlign: TextAlign.center,
                style: TextStyle(color: _headingColor, fontSize: 16),
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Center(
                child: Image.asset("images/splash_bg.png"),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => logindummy()));
                  // setState(() {
                  //   if (_pageState != 0) {
                  //     _pageState = 0;
                  //   } else {
                  //     _pageState = 1;
                  //   }
                  // });
                },
                child: Container(
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(250, 78, 155, 226),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
