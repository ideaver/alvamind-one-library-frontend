import 'package:flutter/material.dart';

import '../../widget/organism/map/map.dart';

class MapSamplesView extends StatefulWidget {
  static const routeName = 'organism-map-samples';

  const MapSamplesView({super.key});

  @override
  State<MapSamplesView> createState() => _MapSamplesViewState();
}

class _MapSamplesViewState extends State<MapSamplesView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppMap(),
    );
  }
}
