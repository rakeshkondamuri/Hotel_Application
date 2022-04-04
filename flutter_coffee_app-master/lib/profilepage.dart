// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   Widget _textFormField() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(vertical: 15),
//           child: TextFormField(
//             style: TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//               counterStyle: TextStyle(color: Colors.black),
//               focusColor: Colors.black,
//               icon: Icon(Icons.person),
//               hintText: 'fullname',
//               hintStyle: TextStyle(
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(vertical: 15),
//           child: TextFormField(
//             style: TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//               counterStyle: TextStyle(color: Colors.black),
//               focusColor: Colors.black,
//               icon: Icon(Icons.email),
//               hintText: 'Email',
//               hintStyle: TextStyle(
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(vertical: 15),
//           child: TextFormField(
//             obscureText: true,
//             style: TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//               counterStyle: TextStyle(color: Colors.black),
//               focusColor: Colors.black,
//               icon: Icon(Icons.lock),
//               hintText: 'password',
//               hintStyle: TextStyle(
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           height: 550,
//           width: 100,
//           decoration: BoxDecoration(boxShadow: [
//             BoxShadow(
//               color: Color.fromARGB(90, 20, 20, 20),
//               blurRadius: 10,
//               offset: Offset(6, 6),
//             )
//           ]),
//           child: RaisedButton(
//             color: Color(0xfff6f6f6),
//             onPressed: () {},
//             child: Text(
//               'update',
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//         ),
//       ],
//     );
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text(
//             'profile',
//             style: TextStyle(fontSize: 25, color: Colors.black),
//           ),
//           centerTitle: true,
//           elevation: 0,
//         ),
//         body: Stack(
//           children: [
//             Container(
//               color: Color(0xfff6f6f6),
//               height: double.infinity,
//               width: double.infinity,
//               padding: EdgeInsets.only(
//                 top: 250,
//                 left: 20,
//                 right: 20,
//               ),
//               child: _textFormField(),
//             ),
//             Container(
//               height: 180,
//               color: Colors.white,
//             ),
//             Container(
//               width: double.infinity,
//               height: 190,
//               margin: EdgeInsets.symmetric(
//                 vertical: 40,
//                 horizontal: 20,
//               ),
//               decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color.fromARGB(90, 20, 20, 20),
//                       blurRadius: 0.8,
//                       offset: Offset(9, 9),
//                     ),
//                   ]),
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 45,
//                       child: CircleAvatar(
//                         backgroundColor: Colors.grey,
//                         radius: 42,
//                         backgroundImage: AssetImage("images/profile.jpg"),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 2,
//                     ),
//                     Text(
//                       'aqell baloch',
//                       style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 2,
//                     ),
//                     Text(
//                       '@aqeel balcoh',
//                       style: TextStyle(
//                         color: Colors.grey[800],
//                       ),
//                     )
//                   ]),
//             )
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //for circle avtar image
          _getHeader(),
          SizedBox(
            height: 10,
          ),
          _profileName("Raj Jani"),
          SizedBox(
            height: 14,
          ),
          _heading("Personal Details"),
          SizedBox(
            height: 6,
          ),
          _detailsCard(),
          SizedBox(
            height: 10,
          ),
          _heading("Settings"),
          SizedBox(
            height: 6,
          ),
          _settingsCard(),
          Spacer(),
          logoutButton()
        ],
      )),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"))
                // color: Colors.orange[100],
                ),
          ),
        ),
      ],
    );
  }

  Widget _profileName(String name) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget _heading(String heading) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Text(
        heading,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _detailsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Something@gmail.com"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("1234567890"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("SomeWhere"),
            )
          ],
        ),
      ),
    );
  }

  Widget _settingsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.dashboard_customize),
              title: Text("About Us"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.topic),
              title: Text("Change Theme"),
            )
          ],
        ),
      ),
    );
  }

  Widget logoutButton() {
    return InkWell(
      onTap: () {},
      child: Container(
          color: Colors.orange,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  "Logout",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          )),
    );
  }
}
