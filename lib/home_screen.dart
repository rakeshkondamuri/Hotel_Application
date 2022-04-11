import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/favorites.dart';
import 'EditProfileui.dart';
import 'booking_page.dart';
import 'bottom1final.dart';
import 'offers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final screens = [
    firstScreen(),
    BookingPage(),
    favorites(),
    offers(),
    EditProfileui()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xffd17842),
        unselectedItemColor: Color(0xff4d4f52),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded), label: "bookings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_sharp), label: "offers"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
