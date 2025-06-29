// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/helper/route/animateroute.dart';
import 'package:manzilbook/view/pages/main_pages/place_page.dart';
import 'package:manzilbook/view/theme/color.dart';

class AllPlacesTile extends StatelessWidget {
  const AllPlacesTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: Dis.only(bottom: 10),
      padding: Dis.only(
        lr: 10,
      ),
      decoration: BoxDecoration(
          color: mainColor.withOpacity(.17),
          borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        onTap: () => animateRightLeft(PlacePage(), context),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 0,
        ),
        title: Text('Dental Health'),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(
              'assets/images/dentist.jpg',
            ),
            height: 200,
            width: 100,
            fit: BoxFit.fitWidth,
          ),
        ),
        subtitle: Row(
          children: [
            HugeIcon(
              icon: HugeIcons.strokeRoundedWallet01,
              color: theme.colorScheme.primary,
              size: 16,
            ),
            Text(
              ' 100 000 sum',
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontSize: 14,
              ),
            ),
            Text('      4.6'),
            HugeIcon(
              icon: Icons.star,
              color: mainColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
