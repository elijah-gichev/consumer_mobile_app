import 'package:flutter/material.dart';

class Request {
  final String action;
  final String object;
  final String location;
  final String minPrice;
  final String maxPrice;
  final IconData? iconData;
  final Color? color;

  Request({
    required this.location,
    required this.action,
    required this.object,
    required this.minPrice,
    required this.maxPrice,
    this.iconData,
    this.color,
  });

  factory Request.blank() {
    return Request(
      location: 'пос. Янтарный, пос. Камышеваха',
      minPrice: '15 млн',
      maxPrice: '25 млн',
      action: 'Купить',
      object: 'дом',
    );
  }
}
