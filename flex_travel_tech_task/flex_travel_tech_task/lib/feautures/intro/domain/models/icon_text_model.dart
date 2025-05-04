import 'package:flutter/material.dart';

class IconTextModel {
  final String icon;

  final double? iconHeight;
  final double? iconWidth;
  final Color? iconColor;
  final double? spacing;
  final String text;
  final TextStyle? textStyle;

  IconTextModel({
    required this.icon,
    this.iconHeight,
    this.iconWidth,
    this.iconColor,
    this.spacing,
    required this.text,
    this.textStyle,
  });
}
