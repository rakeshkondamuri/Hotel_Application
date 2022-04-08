import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/special_coffee_card.dart';

import 'coffee_card.dart';
import 'home_screen.dart';
import 'navbar.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key key}) : super(key: key);

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen>
    with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      //shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(15),
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 620,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.grey, //Color(0xff1b2027),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavigationDrawer())),
                          color: Colors.black //Color(0xff4d4f52),
                          )),
                  // Image.asset(
                  //   "images/timothy-dykes-yd4ubMUNTG0-unsplash-removebg-preview.png",
                  //   height: 50,
                  //   width: 50,
                  // ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Find the best coffee for",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white, //Color(0xff141921),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Find your coffee...",
                      hintStyle: TextStyle(color: Color(0xff3c4046)),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[600],
                      )),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              // ListView(
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.all(8),
              //       child: Container(
              //         height: 10,
              //         width: 10,
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           color: Colors.pink,
              //         ),
              //       ),
              //     )
              //   ],
              // )
              TabBar(
                  isScrollable: true,
                  controller: tabController,
                  labelColor: Colors.black, //Color(0xffd17842),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: Color(0xff3c4046),
                  indicator: CircleTabIndicator(
                      color: Colors.black,
                      radius: 4), //(0xffd17842), radius: 4),
                  tabs: [
                    Tab(
                      text: "Chennai",
                    ),
                    Tab(
                      text: "Hyderabad",
                    ),
                    Tab(
                      text: "Banglore",
                    ),
                    Tab(
                      text: "jaipur",
                    ),
                    Tab(
                      text: "nagpur",
                    ),
                    Tab(
                      text: "mumbai",
                    ),
                  ]),

              CoffeeCard(),

              Text(
                "Special for you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SpecialCoffeeCard(),

        // ListView(
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.all(8),
        //       child: Container(
        //         height: 10,
        //         width: 10,
        //         decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           color: Colors.pink,
        //         ),
        //       ),
        //     )
        //   ],
        // )
        //SpecialCoffeeCard(),
      ],
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
