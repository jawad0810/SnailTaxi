import 'package:flutter/material.dart';
import 'package:snail_taxi_app/google_map/sidebar/sidebar_layout.dart';
//  import 'package:google_maps_flutter/google_maps_flutter.dart';

// const LatLng currentLocation = LatLng(25.1193, 55.3773);

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SideBarLayout(),
    );
  }
}
