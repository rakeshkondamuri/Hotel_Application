import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//import 'carouselslide.dart';
import 'coffee_details_page.dart';
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
    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80',
    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80',
    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80',
    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80',
    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80',
    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80',
    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80',
  ];
  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: ListView(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          children: [
            Container(
                //padding: EdgeInsets.all(20),
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
            // SizedBox(
            //   height: 5,
            // ),
            Text(
              "Find the best coffee for",
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
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 300,
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
            SizedBox(height: 20),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/hotel1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/hotel2.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: MediaQuery.of(context).size.height,
                        margin: EdgeInsets.all(10),
                        //color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/hotel1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/hotel1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CoffeeDetailsPage()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/hotel2.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 3,
                          width: 200, //200
                          margin: EdgeInsets.all(10),
                          //color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('images/hotel1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      padding: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/hotel2.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.all(10),
                      //color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('images/hotel1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('images/hotel1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoffeeDetailsPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('images/hotel2.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: MediaQuery.of(context).size.height / 3,
                        width: 200, //200
                        margin: EdgeInsets.all(10),
                        //color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 250,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       Container(
              //         padding: EdgeInsets.only(top: 30),
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: AssetImage('images/hotel1.jpg'),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //         height: MediaQuery.of(context).size.height / 3,
              //         width: 200, //200
              //         margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
              //         //color: Colors.red,
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(top: 30),
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: AssetImage('images/hotel1.jpg'),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //         height: MediaQuery.of(context).size.height / 3,
              //         width: 200, //200
              //         margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
              //         //color: Colors.red,
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(top: 30),
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: AssetImage('images/hotel1.jpg'),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //         height: MediaQuery.of(context).size.height / 3,
              //         width: 200, //200
              //         margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
              //         //color: Colors.red,
              //       ),
              //       GestureDetector(
              //         onTap: () {
              //           Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => CoffeeDetailsPage()));
              //         },
              //         child: Container(
              //           padding: EdgeInsets.only(top: 30),
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //               image: AssetImage('images/hotel2.jpg'),
              //               fit: BoxFit.fill,
              //             ),
              //           ),
              //           height: MediaQuery.of(context).size.height / 3,
              //           width: 200, //200
              //           margin: EdgeInsets.only(bottom: 10, left: 10, right: 0),
              //           //color: Colors.red,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 250,
              //   margin: EdgeInsets.only(bottom: 10),
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('images/hotel1.jpg'),
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
            ),
          ],
        ));
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        color: Colors.red,
        child: Image.network(
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
