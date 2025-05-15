import 'package:flutter/material.dart';
class ItemNavWidget extends StatelessWidget {
  const ItemNavWidget({
    super.key,
    required this.index,
    required this.numberItem,
    this.icon,
  });

  final int index;
  final int numberItem;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Icon(icon);
  }
}
