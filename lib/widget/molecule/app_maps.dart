import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AppMaps extends StatelessWidget {
  final bool zoomControlsEnabled;
  final MapType mapType;
  final LatLng? initialPosition;
  final double zoom;
  final Set<Marker> markers;
  final void Function(GoogleMapController)? onMapCreated;
  final void Function(LatLng)? onTap;
  final EdgeInsets padding;

  const AppMaps({
    super.key,
    this.zoomControlsEnabled = true,
    this.mapType = MapType.normal,
    this.initialPosition,
    this.zoom = 14,
    this.markers = const {},
    this.onMapCreated,
    this.onTap,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      zoomControlsEnabled: zoomControlsEnabled,
      mapType: mapType,
      initialCameraPosition: CameraPosition(
        target: initialPosition ?? const LatLng(30.488774662306618, 31.032559163868427),
        zoom: zoom,
      ),
      markers: markers,
      onMapCreated: onMapCreated,
      onTap: onTap,
      // cameraTargetBounds : CameraTargetBounds(LatLngBounds()),
      mapToolbarEnabled: false,
      padding: padding,
    );
  }
}
