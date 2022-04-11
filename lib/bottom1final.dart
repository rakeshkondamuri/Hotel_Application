import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_coffeeapp/dummy/listview1.dart';
import 'package:flutter_coffeeapp/dummy/listview5.dart';
import 'package:flutter_coffeeapp/lastlist/listlast1.dart';
import 'package:flutter_coffeeapp/lastlist/listlast2.dart';
import 'package:flutter_coffeeapp/lastlist/listlast3.dart';
import 'package:flutter_coffeeapp/lastlist/listlast4.dart';
import 'package:flutter_coffeeapp/lastlist/listlast5.dart';
import 'dummy/listview2.dart';
import 'dummy/listview3.dart';
import 'dummy/lisview4.dart';
import 'navbar.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({Key key}) : super(key: key);

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen>
    with TickerProviderStateMixin {
  TabController tabController;
  int activeIndex = 0;
  final urlImages = [
    'images/slide1.jpg',
    'images/slide2.jpg',
    'images/slide3.jpg',
    'images/slide4.jpg',
    'images/slide5.jpg',
    'images/slide6.jpg',
    'images/slide7.jpg'
  ];
  List<String> images = [
    "images/hotel1.jpg",
    "images/hotel2.jpg",
    "images/hotel3.jpg",
    "images/hotel4.jpg",
  ];
  List<String> hotel_names = [
    "Novotel Chennai Chamiers Road",
    "Holiday Inn Chennai OMR IT Expressway",
    "The Madras Grand",
    "Welcomhotel by ITC Hotels"
  ];

  List<double> price = [4949, 3890, 2879, 5500];

  @override
  void initState() {
    tabController = TabController(length: 10, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: ListView(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey, //Color(0xff1b2027),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                    icon: Icon(Icons.menu),
                    alignment: Alignment.topLeft,
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationDrawer())),
                    color: Colors.black //Color(0xff4d4f52),
                    )),
            Text(
              "  Find the best hotel!!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
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
                    hintText: "Find your hotel...",
                    hintStyle: TextStyle(color: Color(0xff3c4046)),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(
                isScrollable: true,
                controller: tabController,
                labelColor: Colors.black, //Color(0xffd17842),
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Color(0xff3c4046),
                indicator: CircleTabIndicator(
                    color: Colors.black, radius: 4), //(0xffd17842), radius: 4),
                tabs: [
                  Tab(
                    text: "Chennai",
                  ),
                  Tab(
                    text: "Hyderabad",
                  ),
                  Tab(
                    text: "Bengaluru",
                  ),
                  Tab(
                    text: "jaipur",
                  ),
                  Tab(
                    text: "nagpur",
                  ),
                  Tab(
                    text: "kolkata",
                  ),
                  Tab(
                    text: "Ahmedabad",
                  ),
                  Tab(
                    text: "pune",
                  ),
                  Tab(
                    text: "surat",
                  ),
                  Tab(
                    text: "kochi",
                  ),
                ]),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 150, //300
                    autoPlay: true,
                    reverse: false,
                    pageSnapping: false,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    viewportFraction: 1,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                  ),
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Hotels",
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listview1()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/itc.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 180, left: 15),
                            child: Text('ITC Grand Chola,Chennai \n ₹1350',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listview2()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/parkhyatt.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 150, left: 15),
                            child: Text('Park Hyatt,Chennai \n ₹1200',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          height: MediaQuery.of(context).size.height,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listview3()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/lellapalace.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 180, left: 15),
                            child: Text('The Leela Palace,Chennai \n ₹1400',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listview4()));
                        },
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/novotel.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 180, left: 15),
                            child: Text('Novotel,Chennai \n ₹1240',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listview5()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/tajclubhouse.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 150, left: 15),
                            child: Text('Taj Club House,Chennai \n ₹1100',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          height: MediaQuery.of(context).size.height / 3,
                          width: 200, //200
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5),
              child: Text("Resorts",
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => lastlist1()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/heritagevillage.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 180, left: 15),
                            child: Text('Heritage Village Resorts \n ₹3500',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listlast2()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/diwaclub.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 150, left: 15),
                            child: Text('Diwa Club \n ₹1200',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          height: MediaQuery.of(context).size.height,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listlast3()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/tajfort.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 180, left: 15),
                            child: Text('Taj Fort Resort,Goa \n 4500',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listlast4()));
                        },
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/caravela.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 180, left: 15),
                            child: Text('Caravela,Chennai \n ₹4240',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => listlast5()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/goamarriot.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 150, left: 15),
                            child: Text('Goa Marriott Resort,Goa \n ₹6000',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          height: MediaQuery.of(context).size.height / 3,
                          width: 200, //200
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        color: Colors.red,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
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
