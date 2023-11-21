import 'package:demo_flutter_map/layers/animated_controller.dart';
import 'package:demo_flutter_map/layers/circle_layer.dart';
import 'package:demo_flutter_map/layers/map_controller.dart';
import 'package:demo_flutter_map/layers/marker_layer.dart';
import 'package:demo_flutter_map/layers/overlay_image.dart';
import 'package:demo_flutter_map/layers/polygon_layer.dart';
import 'package:demo_flutter_map/layers/tile_layer.dart';
import 'package:demo_flutter_map/layers/wms.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Map Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF8dea88),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        MarkerPage.route: (context) => const MarkerPage(),
        PolygonPage.route: (context) => const PolygonPage(),
        CirclePage.route: (context) => const CirclePage(),
        OverlayImagePage.route: (context) => const OverlayImagePage(),
        MapControllerPage.route: (context) => const MapControllerPage(),
        AnimatedMapControllerPage.route: (context) =>
            const AnimatedMapControllerPage(),
        WMSLayerPage.route: (context) => const WMSLayerPage(),  
      },
    );
  }
}
