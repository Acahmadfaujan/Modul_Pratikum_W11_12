import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'event_data.dart';
import 'package:geolocator/geolocator.dart';

class MapsPage extends StatelessWidget {
  final EventKampus event;
  final Position? user;

  const MapsPage({super.key, required this.event, this.user});

  @override
  Widget build(BuildContext context) {
    LatLng eventPos = LatLng(event.lat, event.lng);
    LatLng userPos = LatLng(
      user?.latitude ?? -6.2,
      user?.longitude ?? 106.8,
    );

    return Scaffold(
      appBar: AppBar(title: Text(event.nama)),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: eventPos, zoom: 16),
        markers: {
          Marker(
            markerId: const MarkerId("event"),
            position: eventPos,
            infoWindow: InfoWindow(title: event.nama),
          ),
          Marker(
            markerId: const MarkerId("user"),
            position: userPos,
            infoWindow: const InfoWindow(title: "Lokasi Saya"),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueAzure,
            ),
          ),
        },
        myLocationEnabled: true,
        zoomControlsEnabled: true,
      ),
    );
  }
}
