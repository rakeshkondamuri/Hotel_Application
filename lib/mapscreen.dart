import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:hotel/home_screen.dart';
import 'home_screen.dart';
//import 'firstscreen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key key}) : super(key: key);
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> _marker = {};

  void _onMapCreated(GoogleMapController controller) {
    final String todo = ModalRoute.of(context).settings.arguments;
    if (todo == "images/novotel.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(12.905932355188629, 80.22912713785193),
            infoWindow: InfoWindow(
              title: "Novotel Chennai",
              snippet: "my project",
            ),
          ),
        );
      });
    }
    if (todo == "images/itc.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(13.0105, 80.2206),
            infoWindow: InfoWindow(
              title: "ITC Grand Chola",
              snippet: "Chennai",
            ),
          ),
        );
      });
    }
    if (todo == "images/parkhyatt.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(13.07554360958942, 80.25604625477139),
            infoWindow: InfoWindow(
              title: "park hyatt",
              snippet: "Chennai",
            ),
          ),
        );
      });
    }
    if (todo == "images/lellapalace.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(13.0172, 80.2738),
            infoWindow: InfoWindow(
              title: "Lella Palace",
              snippet: "Chennai",
            ),
          ),
        );
      });
    }
    if (todo == "images/tajclubhouse.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(13.0615, 80.2640),
            infoWindow: InfoWindow(
              title: "Taj Club House",
              snippet: "Chennai",
            ),
          ),
        );
      });
    }
    if (todo == "images/heritagevillage.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(15.3357, 73.8969),
            infoWindow: InfoWindow(
              title: "Heritage Village Resorts",
              snippet: "Goa",
            ),
          ),
        );
      });
    }
    if (todo == "images/diwaclub.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(15.3074, 73.9101),
            infoWindow: InfoWindow(
              title: "Diwa Club",
              snippet: "Goa",
            ),
          ),
        );
      });
    }
    if (todo == "images/tajfort.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(15.291680, 73.454680),
            infoWindow: InfoWindow(
              title: "Taj Fort resort",
              snippet: "Goa",
            ),
          ),
        );
      });
    }
    if (todo == "images/caravela.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(15.210346025168265, 73.93367630541375),
            infoWindow: InfoWindow(
              title: "caravela beach resort",
              snippet: "Goa",
            ),
          ),
        );
      });
    }
    if (todo == "images/goamarriot.jpg") {
      setState(() {
        _marker.add(
          Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(15.500371564845743, 73.8094430009695),
            infoWindow: InfoWindow(
              title: "goa marriot",
              snippet: "Goa",
            ),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Center(
          child: Text(
            "MAPS",
          ),
        ),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _marker,
        initialCameraPosition: CameraPosition(
            target: LatLng(13.079797270643192, 80.19670057884525), zoom: 11.0),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
              (Route<dynamic> route) => false);
          //signin();
        },
        child: const Icon(Icons.arrow_back_rounded),
      ),
    );
  }
}
