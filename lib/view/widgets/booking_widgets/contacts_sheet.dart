import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/view/widgets/card_widgets/contact_tile.dart';

class ContactsSheet extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final IconData icon;
  const ContactsSheet({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);

    return Container(
      padding: Dis.all(10),
      height: h*.18,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ContactTile(
            leadingIcon:
                HugeIcon(icon: icon, color: theme.colorScheme.primary,),
            onTap: () {},
            title: title,
          ),
             ContactTile(
            leadingIcon:
                HugeIcon(icon: icon, color: theme.colorScheme.primary,),
            onTap: () {},
            title: title,
          ),
        ],
      ),
    );
  }
}
