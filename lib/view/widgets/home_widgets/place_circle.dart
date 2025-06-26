import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';

class PlaceCircle extends StatelessWidget {
  final HugeIcon icon;
  final String text;
  const PlaceCircle({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:Dis.only(tb: 13,right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            radius: 23,
            child: icon,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.surface,
            ),
          )
        ],
      ),
    );
  }
}
