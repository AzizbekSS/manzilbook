import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/route/animateroute.dart';
import 'package:manzilbook/view/pages/main_pages/all_places_page.dart';

class UpperTextfield extends StatelessWidget {
  const UpperTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: ()=>animateRightLeft(AllPlacesPage(), context),
      textAlign: TextAlign.center,
      readOnly: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: HugeIcon(
          icon: HugeIcons.strokeRoundedSearch01,
          color: Theme.of(context).colorScheme.secondary,
        ),
        suffixIcon: HugeIcon(
          icon: HugeIcons.strokeRoundedArrowRight02,
          color: Theme.of(context).colorScheme.secondary,
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onPrimary,
        hintText: "All Places",
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
