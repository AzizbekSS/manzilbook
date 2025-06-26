import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/view/pages/main_pages/notification_page.dart';

import '../../helper/padding/app_padding.dart';
import '../../helper/route/animateroute.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: Dis.all(8),
        child: Image.asset(
          "assets/images/save.png",
          width: 20,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ManzilBook',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          Text(
            'Your address',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () => animateRightLeft(NotificationPage(), context),
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedNotification02,
              color: Theme.of(context).colorScheme.secondary,
            )),
      ],
    );
  }
}
