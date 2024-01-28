import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  final _initialCameraPostion =
      const CameraPosition(target: LatLng(0, 0), zoom: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
          initialCameraPosition: _initialCameraPostion,
          myLocationButtonEnabled: false,
          markers: {
            const Marker(
                markerId: MarkerId('Salesianos Triana'),
                position: LatLng(37.38049329951381, -6.007534638184238))
          }),
    );
  }
}