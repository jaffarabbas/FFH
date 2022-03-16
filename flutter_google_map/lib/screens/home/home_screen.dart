// ignore_for_file: prefer_final_fields, non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double bootomPadding = 30;

  Completer<GoogleMapController> _GoggleMapcontroller = Completer();

  GoogleMapController? newGoogleMapController;

  Position? currentPosition;

  var geoLocator = Geolocator();

  LocationPermission? permission;

  void locatePosition() async {
    permission = await Geolocator.requestPermission();
    //  bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    // await Geolocator.checkPermission();
    // await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy : LocationAccuracy.high);
    currentPosition = position;
    LatLng latLngPostition = LatLng(position.latitude,position.longitude);
    CameraPosition cameraPosition = new CameraPosition(target: latLngPostition,zoom: 15);
    newGoogleMapController!.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    // Future<void> requestPermission() async {
    // await Permission.location.request();
    // }
    // 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: 100),
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            initialCameraPosition: HomeScreen._kGooglePlex,
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            onMapCreated: (GoogleMapController controller){
              _GoggleMapcontroller.complete(controller);
              newGoogleMapController = controller;
              // setState(() {
              //   bootomPadding = 300;
              // });
              locatePosition();
            },
          ),
        ],
      ),
    );
  }
}
