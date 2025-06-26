// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:manzilbook/view/theme/color.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;

  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.center,
      indicatorStyle: IndicatorStyle(
        
        color: isPast ? mainColor : mainColor.withOpacity(0.3),
        indicator: CircleAvatar(
          backgroundColor: isPast ? mainColor : Colors.white,
          child: Icon(
            Icons.check_circle,
            color: isPast ? Colors.white : mainColor.withOpacity(0.3),
            size: 20,
          ),
        ),
      ),
      axis: TimelineAxis.horizontal,
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: LineStyle(
        color: isPast ? mainColor : mainColor.withOpacity(0.3),
        thickness: 10,
      ),
    
    );
  }
}
