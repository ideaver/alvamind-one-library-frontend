import 'package:flutter/material.dart';

class AppColumnInk extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final MainAxisSize? mainAxisSize;
  const AppColumnInk({
    required this.children,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.mainAxisSize,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisSize: mainAxisSize ?? MainAxisSize.min,
        children: children,
      ),
    );
  }
}
