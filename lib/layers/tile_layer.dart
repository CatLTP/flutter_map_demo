import 'package:demo_flutter_map/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MapScreenState();
}

class _MapScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tile Layer Demo")),
      drawer: buildDrawer(context, HomePage.route),
      body: FlutterMap(
        mapController: MapController(),
        options:  MapOptions(
          initialCenter: const LatLng(10.762622, 106.660172),
          initialZoom: 10,
          cameraConstraint: CameraConstraint.contain(
            bounds: LatLngBounds(
              const LatLng(-90, -180),
              const LatLng(90, 180),
            ),
          ),
        ),
        children: [
          TileLayer(
            tileProvider: NetworkTileProvider(),
            minZoom: -10,
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.demo_flutter_map.example',
          ),
        ],
      ),
    );
  }
}
