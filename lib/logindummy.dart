// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_coffeeapp/signupdummy.dart';

// import 'home_screen.dart';

// class logindummy extends StatefulWidget {
//   const logindummy({Key key}) : super(key: key);

//   @override
//   State<logindummy> createState() => _logindummyState();
// }

// class _logindummyState extends State<logindummy> {
//   String _email, password;
//   var _formkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             child: Form(
//       key: _formkey,
//       child: Column(
//         children: <Widget>[
//           Padding(padding: EdgeInsets.all(20)),
//           Container(
//             margin: EdgeInsets.only(top: 30, bottom: 50),
//             child: Text(
//               "Login To Continue",
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 32),
//             child: Center(
//               child: Image.asset("images/splash_bg.png"),
//             ),
//           ),
//           SizedBox(
//             height: 70,
//           ),
//           //Padding(padding: EdgeInsets.all(20)),
//           Container(
//             padding: EdgeInsets.only(left: 20, right: 20),
//             child: TextFormField(
//               keyboardType: TextInputType.emailAddress,
//               validator: (item) {
//                 return item.contains("@") ? null : "enter valid email";
//               },
//               onChanged: (item) {
//                 setState(() {
//                   _email = item;
//                 });
//               },
//               decoration: InputDecoration(
//                 hintText: "enter email",
//                 labelText: "email",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 prefixIcon: Icon(Icons.email),
//               ),
//             ),
//           ),
//           // InputWithIcon(
//           //   icon: Icons.email,
//           //   hint: "Enter Email...",
//           // ),
//           // SizedBox(
//           //   height: 20,
//           // ),
//           Container(
//             padding: EdgeInsets.all(20),
//             child: TextFormField(
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               validator: (item) {
//                 return item.length > 6
//                     ? null
//                     : " password must be 6 charachters";
//               },
//               onChanged: (item) {
//                 setState(() {
//                   password = item;
//                 });
//               },
//               decoration: InputDecoration(
//                 hintText: "enter password",
//                 labelText: "password",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 prefixIcon: Icon(Icons.key),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 55,
//           ),
//           Column(
//             children: <Widget>[
//               OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                     fixedSize: const Size(320, 50),
//                     //minimumSize: Size(80, 80),
//                     textStyle: TextStyle(fontSize: 18),
//                     primary: Colors.black,
//                     backgroundColor: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(40)),
//                         side: BorderSide(color: Colors.red))),
//                 child: Text("sign in", textAlign: TextAlign.center),
//                 onPressed: () {
//                   Navigator.pushReplacement(context,
//                       MaterialPageRoute(builder: (context) => HomeScreen()));
//                 },
//               ),
//               SizedBox(width: 20, height: 15),
//               GestureDetector(
//                 onTap: () {},
//                 child: OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                       fixedSize: const Size(320, 50),
//                       textStyle: TextStyle(fontSize: 18),
//                       primary: Colors.black,
//                       backgroundColor: Colors.transparent,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(40)),
//                           side: BorderSide(color: Colors.red))),
//                   child:
//                       Text("create new account", textAlign: TextAlign.center),
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => signupdummy()));
//                     //Navigator.push(context, MaterialPageRoute(builder: (context)=>s));
//                   },
//                 ),
//               ),
//               //)
//             ],
//           ),
//           // InputWithIcon(
//           //   icon: Icons.vpn_key,
//           //   hint: "Enter Password...",
//           // )
//         ],
//       ),
//     )));
//   }
// }
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/signupdummy.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_screen.dart';
import 'logindummy.dart';

class logindummy extends StatefulWidget {
  const logindummy({Key key}) : super(key: key);

  @override
  State<logindummy> createState() => _logindummyState();
}

class _logindummyState extends State<logindummy> {
  String _email, _password;
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  bool isLoading = false;
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Container(
                child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(20)),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 50),
                      child: Text(
                        "sign in",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: 32),
                    //   child: Center(
                    //     child: Image.asset(
                    //         "images/splash_bg.png"), //"images/splash_bg.png"
                    //   ),
                    // ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        //controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (item) {
                          return item.contains("@")
                              ? null
                              : "enter valid email";
                        },
                        onChanged: (item) {
                          setState(() {
                            _email = item;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "enter email",
                          labelText: "email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    // InputWithIcon(
                    //   icon: Icons.email,
                    //   hint: "Enter Email...",
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextFormField(
                        //controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: (item) {
                          return item.length > 6
                              ? null
                              : " password must be 6 charachters";
                        },
                        onChanged: (item) {
                          setState(() {
                            _password = item;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "enter password",
                          labelText: "password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: Icon(Icons.key),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: <Widget>[
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              fixedSize: const Size(320, 50),
                              //minimumSize: Size(80, 80),
                              textStyle: TextStyle(fontSize: 18),
                              primary: Colors.black,
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  side: BorderSide(color: Colors.red))),
                          child: Text("sign in", textAlign: TextAlign.center),
                          onPressed: () {
                            login(); //signin();
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => signupdummy()));
                            },
                            child: Text(
                              "register here",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          alignment: Alignment.center,
                        )

                        // SizedBox(width: 20, height: 15),
                        // GestureDetector(
                        //   onTap: () {},
                        //   child: OutlinedButton(
                        //     style: OutlinedButton.styleFrom(
                        //         fixedSize: const Size(320, 50),
                        //         textStyle: TextStyle(fontSize: 18),
                        //         primary: Colors.black,
                        //         backgroundColor: Colors.transparent,
                        //         shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.all(Radius.circular(40)),
                        //             side: BorderSide(color: Colors.red))),
                        //     child:
                        //         Text("create new account", textAlign: TextAlign.center),
                        //     onPressed: () {
                        //       //Navigator.push(context, MaterialPageRoute(builder: (context)=>s));
                        //     },
                        //   ),
                        // ),
                        //)
                      ],
                    ),

                    // InputWithIcon(
                    //   icon: Icons.vpn_key,
                    //   hint: "Enter Password...",
                    // )
                  ],
                ),
              )));
  }

  // Future signin() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: emailController.text.trim(),
  //     password: passwordController.text.trim(),
  //   );
  // }

  void login() {
    if (_formkey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password)
          .then((user) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "login successful");

        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (Route<dynamic> route) => false);
      }).catchError((onError) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "error" + onError.toString());
      });
    }
  }
}
