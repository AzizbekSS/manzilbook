// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../helper/padding/app_padding.dart';
import '../../theme/color.dart';
import '../../theme/theme_provider.dart';
import '../booking_widgets/app_list_tile.dart';

class MyDrawer extends ConsumerStatefulWidget {
  const MyDrawer({
    super.key,
    required this.theme,
    required this.h,
  });

  final ThemeData theme;
  final double h;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyDrawerState();
}


class _MyDrawerState extends ConsumerState<MyDrawer> {
  
   
  @override
  Widget build(BuildContext context) {
    
   final themeMode = ref.watch(themeNotifierProvider);
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final isDark = themeMode == ThemeMode.dark;
    return SafeArea(
      child: Drawer(
        backgroundColor: widget.theme.primaryColor,
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
                    color: Colors.white,),
              ),
              SizedBox(
                height: widget.h * .01,
              ),
              Text(
                'Falonchiyev Pistonchi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: widget.h * .01,
              ),
              Divider(
                color: widget.theme.colorScheme.onPrimary,
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedEdit01,
                    color: widget.theme.colorScheme.primary),
                title: Text("Edit your info"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedCreditCard,
                    color: widget.theme.colorScheme.primary),
                title: Text("Your cards"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedFavourite,
                    color: widget.theme.colorScheme.primary),
                title: Text("Favourites"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: isDark?  HugeIcons.strokeRoundedMoon02  : HugeIcons.strokeRoundedSun01,
                    color: widget.theme.colorScheme.primary,),
                title: Text("Change Theme"),
                onTap: themeNotifier.toggleTheme,
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedLanguageCircle,
                    color: widget.theme.colorScheme.primary),
                title: Text("Change Language"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedTransactionHistory,
                    color: widget.theme.colorScheme.primary),
                title: Text("Your Bookings"),
                onTap: () {},
              ),
              MyListTile(
                leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedCustomerSupport,
                    color: widget.theme.colorScheme.primary),
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




