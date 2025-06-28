// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';

class Notificatons extends StatelessWidget {
  final String title;
  final String text;
  final DateTime date;
  const Notificatons({
    super.key,
    required this.text,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding:Dis.only(bottom: 20),
      child: Container(
        padding: Dis.only(lr: 8,tb: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
         boxShadow: [
           BoxShadow(
              color: isDark
                  ? Colors.black.withOpacity(0.5)
                  : Colors.grey.withOpacity(0.3),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
            if (!isDark) 
              BoxShadow(
                color: Colors.white.withOpacity(0.6),
                blurRadius: 10,
                offset: const Offset(-5, -5),
              ),
         ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            SizedBox(height: 5),
            Text(
              date.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
