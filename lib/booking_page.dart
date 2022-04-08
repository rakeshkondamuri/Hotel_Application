import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'bottom1final.dart';
import 'home_screen.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
                      "https://assets1.lottiefiles.com/packages/lf20_fxvz0c.json")),
              SizedBox(height: 20),
              Text(
                "book your hotel now!!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    //minimumSize: Size(80, 80),
                    textStyle: TextStyle(fontSize: 18),
                    primary: Colors.black,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        side: BorderSide(color: Colors.red))),
                child: Text("book now", textAlign: TextAlign.center),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (Route<dynamic> route) => false);
                  //signin();
                },
              ),
              //Text("by VITESH & RAKESH"),
            ],
          )),
    );
  }
}
