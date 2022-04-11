import 'package:flutter/material.dart';

class offers extends StatefulWidget {
  const offers({Key key}) : super(key: key);

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Center(
          child: Text(
            "offers",
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Container(
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/offers1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          //];
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/offer2.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                  width: 200, //200
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                  //color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/offer5.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height,

                  ///3
                  width: 200, //200
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                  //color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/offer4.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                  width: 200, //200
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                  //color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/offer6.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                  width: 200, //200
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                  //color: Colors.red,
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/offerlast1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  //padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/offer81.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                  width: 200, //200
                  //margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                  //color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/offer8.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                  width: 200, //200
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/offer9.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                  width: 200, //200
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/offer10.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 3,
                    width: 200, //200
                    margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
