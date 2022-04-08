import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_screen.dart';
import 'logindummy.dart';

class signupdummy extends StatefulWidget {
  const signupdummy({Key key}) : super(key: key);

  @override
  State<signupdummy> createState() => _signupdummyState();
}

class _signupdummyState extends State<signupdummy> {
  String _email, _password;
  var _formkey = GlobalKey<FormState>();
  bool isLoading = false;
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
                        "Register here",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: 32),
                    //   child: Center(
                    //     child: Image.asset("images/splash_bg.png"),
                    //   ),
                    // ),
                    SizedBox(
                      height: 80,
                    ),
                    //Padding(padding: EdgeInsets.all(20)),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
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
                      height: 55,
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
                          child: Text("sign up", textAlign: TextAlign.center),
                          onPressed: () {
                            signup();
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => logindummy()));
                            },
                            child: Text(
                              "login here",
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

  void signup() {
    if (_formkey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password)
          .then((user) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "register successful");
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (Route<dynamic> route) => false); //false
      }).catchError((onError) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "error" + onError.toString());
      });
    }
  }
}
