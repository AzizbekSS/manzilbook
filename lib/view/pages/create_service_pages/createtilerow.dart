import 'package:flutter/material.dart';
import 'package:manzilbook/view/widgets/timelinetile.dart';

class CreateTileRow extends StatelessWidget {
  const CreateTileRow({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    return 
       SizedBox(
        height: h*.07,
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            MyTimelineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
            ),
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
            ),
            MyTimelineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
            ),
          ],
        ),
      );
  }
}
