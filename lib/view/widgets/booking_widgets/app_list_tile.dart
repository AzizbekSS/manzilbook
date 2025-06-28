import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget? subtitle;
  final void Function()? onTap;
 const MyListTile({
    super.key,
    required this.leading,
    required this.title,
    this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: leading,
      title: title,
      subtitle: subtitle,
      onTap: onTap,
    );
  }
}
