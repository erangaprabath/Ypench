import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mapView extends StatefulWidget {
  const mapView({Key? key}) : super(key: key);

  @override
  _mapViewState createState() => _mapViewState();
}

class _mapViewState extends State<mapView> {
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(37.773972, -122.431297), zoom: 10.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: true,
        zoomControlsEnabled: true,
        initialCameraPosition: _initialCameraPosition,
        myLocationEnabled: true,
      ),
    );
  }
}
