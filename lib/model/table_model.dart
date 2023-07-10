import 'package:flutter/material.dart';

class TableModel {
  final String data;
  final int flex;
  final Widget? child;

  TableModel({
    required this.data,
    this.flex = 1,
    this.child,
  });
}
