import 'package:flutter/material.dart';

class PanelItem {
  PanelItem({
    required this.id,
    required this.expandedValue,
    required this.hintText,
    required this.headerValue,
    this.checkValue = false,
    this.isExpanded = false,
    required this.body,
  });
  int id;
  String expandedValue;
  String hintText;
  String headerValue;
  bool isExpanded;
  bool checkValue;
  Widget body;
}
