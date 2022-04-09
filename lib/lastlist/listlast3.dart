import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../home_screen.dart';

class listlast3 extends StatelessWidget {
  const listlast3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 440,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage("images/tajfort.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 320,
                    child: BlurryContainer(
                      padding: EdgeInsets.all(20),
                      height: 140,
                      bgColor: Color(0xff141921),
                      width: 377,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Taj Fort",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // Text(
                              //   "With Oat Milk",
                              //   style: TextStyle(
                              //     color: Color(0xff919296),
                              //     fontSize: 12,
                              //   ),
                              // ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "images/star.svg",
                                    height: 20,
                                    color: Color(0xffd17842),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "(6.983)",
                                    style: TextStyle(color: Color(0xff919296)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // SvgPicture.asset(
                                        //   "images/coffee-beans.svg",
                                        //   color: Color(0xffd17842),
                                        //   height: 15,
                                        // ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "AC",
                                          style: TextStyle(
                                              color: Color(0xff919296),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff101419),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 42,
                                    width: 42,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // SvgPicture.asset(
                                        //   "images/water-drop.svg",
                                        //   color: Color(0xffd17842),
                                        //   height: 15,
                                        // ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Non-Ac",
                                          style: TextStyle(
                                              color: Color(0xff919296),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff101419),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 37,
                                width: 120,
                                child: Center(
                                    child: Text(
                                  "Hotel",
                                  style: TextStyle(
                                      color: Color(0xff919296),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                    color: Color(0xff101419),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 150,
                      child: SingleChildScrollView(
                        //scrollDirection: Axis.vertical,

                        child: Text(
                          "This property is 1 minute walk from the beach. Overlooking the Arabian Sea, Taj Fort Aguada Resort & Spa, Goa offers luxurious 5-star accommodation spread across 73 acres. Boasting 5 dining options, it features a spa, outdoor pool and fitness facilities. Free WiFi is available throughout the property. \n Just 100 m from Fort Aguada, Taj Fort Aguada Resort & Spa, Goa is about 12 km from Vagator Beach and Chapora Fortr ess. It is a 75-minute drive from Goa International Airport and provides free parking. \n Featuring Portuguese designs and private balconies, air-conditioned units are fitted with classic wood furnishings and a DVD player. Private bathrooms have a bathtub, hairdryer and bathrobes.",
                          style:
                              TextStyle(color: Color(0xff919296), fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "people!",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "Adult",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffd17842))),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "youngster",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xff101419),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "child",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xff101419),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Color(0xff919296),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  r'₹',
                                  style: TextStyle(
                                      color: Color(0xffd17842), fontSize: 21),
                                ),
                                Text(
                                  "4500",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21),
                                )
                              ],
                            )
                          ],
                        ),
                        // ignore: deprecated_member_use
                        ButtonTheme(
                          minWidth: 200,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                  (Route<dynamic> route) => false);
                              Fluttertoast.showToast(
                                  msg: "your hotel is booked");
                            },
                            color: Color(0xffd17842),
                            child: Text(
                              "book Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
