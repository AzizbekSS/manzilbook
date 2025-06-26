import 'package:flutter/material.dart';
import 'package:manzilbook/view/widgets/timelinetile.dart';

class CreateTileRow extends StatelessWidget {

  final bool isFirstPast;
  final bool isSecondPast;
  final bool isLastPasat;
  const CreateTileRow({super.key,
   required this.isFirstPast,
   required this.isSecondPast,
   required this.isLastPasat
  });

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
              isPast: isFirstPast,
            ),
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isPast: isSecondPast,
            ),
            MyTimelineTile(
              isFirst: false,
              isLast: true,
              isPast: isLastPasat,
            ),
          ],
        ),
      );
  }
}
