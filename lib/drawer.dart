import 'package:demo_flutter_map/layers/animated_controller.dart';
import 'package:demo_flutter_map/layers/circle_layer.dart';
import 'package:demo_flutter_map/layers/map_controller.dart';
import 'package:demo_flutter_map/layers/marker_layer.dart';
import 'package:demo_flutter_map/layers/overlay_image.dart';
import 'package:demo_flutter_map/layers/polygon_layer.dart';
import 'package:demo_flutter_map/layers/tile_layer.dart';
import 'package:demo_flutter_map/layers/wms.dart';
import 'package:flutter/material.dart';

Widget _buildMenuItem(
  BuildContext context,
  Widget title,
  String routeName,
  String currentRoute, {
  Widget? icon,
}) {
  final isSelected = routeName == currentRoute;

  return ListTile(
    title: title,
    leading: icon,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ProjectIcon.png',
                height: 48,
              ),
              const SizedBox(height: 16),
              const Text(
                'Flutter Map Demo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                '© flutter_map Authors & Contributors',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        _buildMenuItem(
          context,
          const Text(
            'Tile Layer',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          HomePage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Marker Layer'),
          MarkerPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Polygon Layer'),
          PolygonPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Circle Layer'),
          CirclePage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Overlay Image Layer'),
          OverlayImagePage.route,
          currentRoute,
        ),
        const Divider(),
        _buildMenuItem(
          context,
          const Text('Map Controller'),
          MapControllerPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Animated Map Controller'),
          AnimatedMapControllerPage.route,
          currentRoute,
        ),
               const Divider(),
        _buildMenuItem(
          context,
          const Text('WMS Sourced Map'),
          WMSLayerPage.route,
          currentRoute,
        ),
      ],
    ),
  );
}
