import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/view/widgets/booking_widgets/app_list_tile.dart';

class MyBottomsheet extends StatelessWidget {
  const MyBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Container(
      height: h * 0.4,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyListTile(
              leading: HugeIcon(
                  icon: HugeIcons.strokeRoundedCalendar01,
                  color: Theme.of(context).colorScheme.surface),
              title: Text(
                'Book',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              ),
              onTap: () {},
            ),
            MyListTile(
              leading: HugeIcon(
                  icon: HugeIcons.strokeRoundedBubbleChat,
                  color: Theme.of(context).colorScheme.surface),
              title: Text(
                'Chat',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              ),
              onTap: () {},
            ),
            MyListTile(
              leading: HugeIcon(
                  icon: HugeIcons.strokeRoundedCall,
                  color: Theme.of(context).colorScheme.surface),
              title: Text(
                'Call',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              ),
              onTap: () {},
            ),
            MyListTile(
              leading: HugeIcon(
                  icon: HugeIcons.strokeRoundedDirections01,
                  color: Theme.of(context).colorScheme.surface),
              title: Text(
                'Direction',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              ),
              onTap: () {},
            ),
            MyListTile(
              leading: HugeIcon(
                  icon: HugeIcons.strokeRoundedShare01,
                  color: Theme.of(context).colorScheme.surface),
              title: Text(
                'Share',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              ),
              onTap: () {},
            ),
            MyListTile(
              leading: HugeIcon(
                  icon: HugeIcons.strokeRoundedCommentAdd01,
                  color: Theme.of(context).colorScheme.surface),
              title: Text(
                'Review',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
