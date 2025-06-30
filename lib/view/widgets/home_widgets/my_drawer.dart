// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../helper/padding/app_padding.dart';
import '../../theme/color.dart';
import '../booking_widgets/app_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required this.theme,
    required this.h,
  });

  final ThemeData theme;
  final double h;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: theme.primaryColor,
        child: Padding(
          padding: Dis.only(lr: 12, tb: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: mainColor.withOpacity(.5),
                child: HugeIcon(
                    icon: HugeIcons.strokeRoundedUserAccount,
                    size: 30,
                    color: Colors.white),
              ),
              SizedBox(
                height: h * .01,
              ),
              Text(
                'Falonchiyev Pistonchi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * .01,
              ),
              Divider(
                color: theme.colorScheme.onPrimary,
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedEdit01,
                    color: theme.colorScheme.primary),
                title: Text("Edit your info"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedCreditCard,
                    color: theme.colorScheme.primary),
                title: Text("Your cards"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedFavourite,
                    color: theme.colorScheme.primary),
                title: Text("Favourites"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedSun01,
                    color: theme.colorScheme.primary),
                title: Text("Change Theme"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedLanguageCircle,
                    color: theme.colorScheme.primary),
                title: Text("Change Language"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedTransactionHistory,
                    color: theme.colorScheme.primary),
                title: Text("Your Bookings"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedCustomerSupport,
                    color: theme.colorScheme.primary),
                title: Text("Support"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
