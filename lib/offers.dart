import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/coffee_details_page.dart';
//import 'package:flutter_coffeeapp/offerimage.dart';

class offers extends StatefulWidget {
  const offers({Key key}) : super(key: key);

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  //DataHome object = DataHome();

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
                image: AssetImage('images/hotel1.jpg'),
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
                      image: AssetImage('images/hotel1.jpg'),
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
                      image: AssetImage('images/hotel1.jpg'),
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
                      image: AssetImage('images/hotel1.jpg'),
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
                      image: AssetImage('images/hotel1.jpg'),
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
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/hotel1.jpg'),
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
                      image: AssetImage('images/hotel1.jpg'),
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
                      image: AssetImage('images/hotel1.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                  width: 200, //200
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                  //color: Colors.red,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoffeeDetailsPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/hotel1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 3,
                    width: 200, //200
                    margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
                    //color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/hotel1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//   Widget build(BuildContext context) {
//     return Container(
//         margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
//         height: 300, //150
//         width: double.infinity,
//         child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: object.getData.length,
//             itemBuilder: (context, index) {
//               return InkWell(
//                   onTap: () {},
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 2),
//                     height: 200,
//                     width: 250,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       image: DecorationImage(
//                           image: AssetImage(
//                             object.getData[index].imageUrl,
//                           ),
//                           fit: BoxFit.cover),
//                     ),
//                   ));
//             }));
//   }
// }