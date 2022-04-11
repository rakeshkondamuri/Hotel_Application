import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/dummy/listview2.dart';
import 'package:flutter_coffeeapp/lastlist/listlast3.dart';
import 'package:flutter_coffeeapp/lastlist/listlast5.dart';

import 'dummy/listview1.dart';
import 'lastlist/listlast4.dart';

class favorites extends StatelessWidget {
  List<String> specialImages = [
    "images/hotel2.jpg",
    "images/coffee.jpg",
    "images/lattee.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("favorites"),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listview1()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/itc.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 160, left: 15),
                  child: Text('ITC Grand Chola,Chennai \n ₹1350',
                      style: new TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 233, 231, 231),
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listview2()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/parkhyatt.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 160, left: 15),
                  child: Text('park Hyatt,Chennai \n ₹1350',
                      style: new TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 233, 231, 231),
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listlast4()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/caravela.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 160, left: 15),
                  child: Text('caravela,Goa \n ₹4500',
                      style: new TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listlast5()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/goamarriot.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 160, left: 15),
                  child: Text('Goa Marroit,Goa \n ₹4500',
                      style: new TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listlast3()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/tajfort.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 160, left: 15),
                  child: Text('Taj Fort Resorts,Goa \n ₹6000',
                      style: new TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
