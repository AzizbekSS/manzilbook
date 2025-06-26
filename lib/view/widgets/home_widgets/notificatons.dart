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
    return Padding(
      padding:Dis.only(bottom: 10),
      child: Container(
        padding: Dis.only(lr: 8,tb: 10),
        decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(
                        color: Theme.of(context).colorScheme.primary,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
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
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
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
