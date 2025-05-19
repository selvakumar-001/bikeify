import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class location extends StatelessWidget {
  const location({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    // Create a MapController instance
    final MapController mapController = MapController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("OSM Plugin Map Example"),
      ),
      body: OSMFlutter(
        controller: mapController, // Assign the mapController here
        osmOption: OSMOption(
        //  userTrackingOption: UserTrackingOption.follow, // Use appropriate option
          zoomOption: ZoomOption(
            initZoom: 8,
            minZoomLevel: 3,
            maxZoomLevel: 19,
            stepZoom: 1.0,
          ),
          userLocationMarker: UserLocationMaker(
            personMarker: MarkerIcon(
              icon: Icon(
                Icons.location_history_rounded,
                color: Colors.red,
                size: 48,
              ),
            ),
            directionArrowMarker: MarkerIcon(
              icon: Icon(
                Icons.double_arrow,
                size: 48,
              ),
            ),
          ),
          roadConfiguration: RoadOption(
            roadColor: Colors.yellowAccent,
          ),
          // markerOption: MarkerOption(
          //   defaultMarker: MarkerIcon(
          //     icon: Icon(
          //       Icons.person_pin_circle,
          //       color: Colors.blue,
          //       size: 56,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: location(),
  ));
}
