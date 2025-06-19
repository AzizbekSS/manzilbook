import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedCar02,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Auto',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.onPrimary,
        )
      ],
    );
  }
}
