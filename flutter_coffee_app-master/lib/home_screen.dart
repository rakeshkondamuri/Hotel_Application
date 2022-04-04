// import 'package:flutter/material.dart';
// import 'package:flutter_coffeeapp/coffee_card.dart';
// //import 'package:flutter_coffeeapp/coffee_card2.dart';
// import 'package:flutter_coffeeapp/navbar.dart';
// import 'package:flutter_coffeeapp/special_coffee_card.dart';

// //import 'booking_page.dart';
// import 'coffee_details_page.dart';
// import 'favorites.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
//   TabController tabController;
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//       if(_selectedIndex ==1){
//         Navigator.push(context,
//               MaterialPageRoute(builder: (context) => SpecialCoffeeCard()));
//       }
//       // if(_selectedIndex ==2){
//       //   Navigator.push(context,
//       //         MaterialPageRoute(builder: (context) => BookingPage()));
//       // }

//     });
//   }

//   @override
//   void initState() {
//     tabController = TabController(length: 6, vsync: this);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: SafeArea(
//           child: ListView(
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         padding: EdgeInsets.all(15),
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: 820,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                         padding: EdgeInsets.all(0),
//                         decoration: BoxDecoration(
//                           color: Colors.grey, //Color(0xff1b2027),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: IconButton(
//                             icon: Icon(Icons.menu),
//                             onPressed: () => Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => navbar())),
//                             color: Colors.black //Color(0xff4d4f52),
//                             )),
//                     // Image.asset(
//                     //   "images/timothy-dykes-yd4ubMUNTG0-unsplash-removebg-preview.png",
//                     //   height: 50,
//                     //   width: 50,
//                     // ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   "Find the best coffee for",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 6.0),
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     color: Colors.white, //Color(0xff141921),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Find your coffee...",
//                         hintStyle: TextStyle(color: Color(0xff3c4046)),
//                         border: InputBorder.none,
//                         prefixIcon: Icon(
//                           Icons.search,
//                           color: Colors.grey[600],
//                         )),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 0,
//                 ),
//                 // ListView(
//                 //   children: [
//                 //     Padding(
//                 //       padding: EdgeInsets.all(8),
//                 //       child: Container(
//                 //         height: 10,
//                 //         width: 10,
//                 //         decoration: BoxDecoration(
//                 //           shape: BoxShape.circle,
//                 //           color: Colors.pink,
//                 //         ),
//                 //       ),
//                 //     )
//                 //   ],
//                 // )
//                 TabBar(
//                     isScrollable: true,
//                     controller: tabController,
//                     labelColor: Colors.black, //Color(0xffd17842),
//                     labelStyle: TextStyle(fontWeight: FontWeight.bold),
//                     unselectedLabelColor: Color(0xff3c4046),
//                     indicator: CircleTabIndicator(
//                         color: Colors.black,
//                         radius: 4), //(0xffd17842), radius: 4),
//                     tabs: [
//                       Tab(
//                         text: "Chennai",
//                       ),
//                       Tab(
//                         text: "Hyderabad",
//                       ),
//                       Tab(
//                         text: "Banglore",
//                       ),
//                       Tab(
//                         text: "jaipur",
//                       ),
//                       Tab(
//                         text: "nagpur",
//                       ),
//                       Tab(
//                         text: "mumbai",
//                       ),
//                     ]),
//                 CoffeeCard(),
//                 Text(
//                   "Special for you",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 CoffeeCardSecond(),

//                 Text(
//                   "Special for you",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//               ],
//             ),
//           ),
//           SpecialCoffeeCard(),

//           // ListView(
//           //   children: [
//           //     Padding(
//           //       padding: EdgeInsets.all(8),
//           //       child: Container(
//           //         height: 10,
//           //         width: 10,
//           //         decoration: BoxDecoration(
//           //           shape: BoxShape.circle,
//           //           color: Colors.pink,
//           //         ),
//           //       ),
//           //     )
//           //   ],
//           // )
//           //SpecialCoffeeCard(),
//         ],
//       )),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black,
//         selectedItemColor: Color(0xffd17842),
//         unselectedItemColor: Color(0xff4d4f52),
//         showSelectedLabels: true,
//         showUnselectedLabels: false,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "FAVOURITE"),
//           BottomNavigationBarItem(icon: Icon(Icons.luggage_outlined), label: "NOTIFICATIONS"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
//           BottomNavigationBarItem(icon: Icon(Icons.offline_pin_rounded), label: "PROFILE"),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// class CircleTabIndicator extends Decoration {
//   final BoxPainter _painter;

//   CircleTabIndicator({@required Color color, @required double radius})
//       : _painter = _CirclePainter(color, radius);

//   @override
//   BoxPainter createBoxPainter([onChanged]) => _painter;
// }

// class _CirclePainter extends BoxPainter {
//   final Paint _paint;
//   final double radius;

//   _CirclePainter(Color color, this.radius)
//       : _paint = Paint()
//           ..color = color
//           ..isAntiAlias = true;

//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
//     final Offset circleOffset =
//         offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
//     canvas.drawCircle(circleOffset, radius, _paint);
//   }
// }
import 'package:flutter/material.dart';
//import 'package:flutter_coffeeapp/coffee_card.dart';
//import 'package:flutter_coffeeapp/favorites.dart';
import 'package:flutter_coffeeapp/home.dart';
import 'package:flutter_coffeeapp/special_coffee_card.dart';
import 'EditProfileui.dart';
import 'bottom1.dart';
//import 'bottom1final.dart';
import 'bottom1final.dart';
import 'offers.dart';
//import 'profilepage.dart';
//import 'coffee_details_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //with TickerProviderStateMixin {
  //TabController tabController;
  int currentIndex = 0;
  final screens = [
    firstScreen(),
    //Listview(),
    recipenew(),
    SpecialCoffeeCard(),

    //HomeScreen(),
    //favorites(),
    //Coffee_card(),
    //CoffeeDetailsPage(),
    offers(),
    EditProfileui()
  ];
  //@override
  // void initState() {
  //   tabController = TabController(length: 6, vsync: this);
  //   super.initState();
  // }

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
              icon: Icon(Icons.favorite), label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: "offers"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}

// class CircleTabIndicator extends Decoration {
//   final BoxPainter _painter;

//   CircleTabIndicator({@required Color color, @required double radius})
//       : _painter = _CirclePainter(color, radius);

//   @override
//   BoxPainter createBoxPainter([onChanged]) => _painter;
// }

// class _CirclePainter extends BoxPainter {
//   final Paint _paint;
//   final double radius;

//   _CirclePainter(Color color, this.radius)
//       : _paint = Paint()
//           ..color = color
//           ..isAntiAlias = true;

//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
//     final Offset circleOffset =
//         offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
//     canvas.drawCircle(circleOffset, radius, _paint);
//   }
// }
