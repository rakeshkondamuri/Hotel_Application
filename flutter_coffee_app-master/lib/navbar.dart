// import 'package:flutter/material.dart';
// import 'package:flutter_coffeeapp/home_screen.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import 'favorites.dart';

// class navbar extends StatelessWidget {
//   const navbar({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Material(
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('Oflutter.com'),
//               accountEmail: Text('example@gmail.com'),
//               currentAccountPicture: CircleAvatar(
//                 child: ClipOval(
//                   child: Image.network(
//                     'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
//                     fit: BoxFit.cover,
//                     width: 90,
//                     height: 90,
//                   ),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 image: DecorationImage(
//                     fit: BoxFit.fill,
//                     image: NetworkImage(
//                         'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.favorite),
//               title: Text('Favorites'),
//               onTap: () => HomeScreen(),
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Friends'),
//               onTap: () => {},
//             ),
//             ListTile(
//               leading: Icon(Icons.share),
//               title: Text('Share'),
//               onTap: () => null,
//             ),
//             ListTile(
//               leading: Icon(Icons.notifications),
//               title: Text('Request'),
//               onTap: () => null,
//               trailing: ClipOval(
//                 child: Container(
//                   color: Colors.red,
//                   width: 20,
//                   height: 20,
//                   child: Center(
//                     child: Center(
//                       child: Text(
//                         '8',
//                         style: TextStyle(color: Colors.white, fontSize: 12),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () => null,
//             ),
//             ListTile(
//               leading: Icon(Icons.description),
//               title: Text('Policies'),
//               onTap: () => null,
//             ),
//             Divider(),
//             ListTile(
//               title: Text('Exit'),
//               leading: Icon(Icons.exit_to_app),
//               onTap: () => null,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/coffee_details_page.dart';
import 'package:flutter_coffeeapp/home_screen.dart';
// import 'my_drawer_header.dart';
import 'package:flutter_coffeeapp/navbar.dart';
import 'package:flutter_coffeeapp/people.dart';
import 'package:flutter_coffeeapp/send_feedback.dart';

import 'drawer_item.dart';
import 'favorites.dart';
//import 'package:flutter_navigation_drawer/drawer_item.dart';
// import 'package:flutter_navigation_drawer/pages/people.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                name: 'People',
                icon: Icons.people,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'My Account',
                  icon: Icons.account_box_rounded,
                  onPressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Feedback',
                  icon: Icons.message_outlined,
                  onPressed: () => onItemPressed(context, index: 2)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Favourites',
                  icon: Icons.favorite_outline,
                  onPressed: () => onItemPressed(context, index: 3)),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Setting',
                  icon: Icons.settings,
                  onPressed: () => onItemPressed(context, index: 4)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () => onItemPressed(context, index: 5)),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => People()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CoffeeDetailsPage()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SendFeedbackPage()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => favorites()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => People()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => People()));
        break;
    }
  }

  Widget headerWidget() {
    const url =
        'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('person@email.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
