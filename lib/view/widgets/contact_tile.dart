import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ContactTile extends StatelessWidget {
  final Widget leadingIcon;
  final String title;
  final void Function() onTap;
  const ContactTile({
    super.key,
    required this.leadingIcon,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: HugeIcon(
        icon: HugeIcons.strokeRoundedArrowRight01,
        color: Theme.of(context).colorScheme.surface,
      ),
      leading: leadingIcon,
      title: Text(title),
      onTap: onTap,
    );
  }
}
