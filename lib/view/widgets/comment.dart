import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(

          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child:
                HugeIcon(icon: HugeIcons.strokeRoundedMan, color: Colors.white),
          ),
          title: Text('Rakhmatov Akhmad'),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 15,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 15,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 15,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 15,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 15,
            ),
            Text(" • 4days ago")
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
            "Guruhdan chiqib 20 mln \$ ishlasa Samarqandan 50 ming muhlis sig'adigan stadium qurush kerak suvni bo'yidan xamma Viloyatga yaqin bo'ladi terma jamoa o'yinlari uchun"),

            SizedBox(
              height: 12,
            ),
      ],
    );
  }
}
