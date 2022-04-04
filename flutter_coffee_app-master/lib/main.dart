//import 'dart:html';

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/send_feedback.dart';
import 'package:flutter_coffeeapp/settings.dart';
import 'package:flutter_coffeeapp/splash.dart';
import 'navbar.dart';
import 'home_screen.dart';
import 'notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: navbar(),
//     );
//   }
//}
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(),
        body: Builder(builder: (context) {
          return Center(
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.open_in_new, color: Colors.white),
                label: const Text(
                  'Open Navigation Drawer',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        }));
  }
}
