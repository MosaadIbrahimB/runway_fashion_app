import 'package:flutter/material.dart';

class FreeDeliveryModel {
  final String ?pathImage;
  final String? title;
  final Widget ?widget;
  final bool? borderT;
  final bool? borderB;

  FreeDeliveryModel({
    this.pathImage,
    this.title,
    this.widget,
    this.borderT=true,
    this.borderB=true,
  });
}
