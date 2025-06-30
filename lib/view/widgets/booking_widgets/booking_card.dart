// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/view/theme/color.dart';

class BookingCard extends StatelessWidget {
  void Function()? onTap;
  final String placeName;
  final double distance;
  final String category;
  final double rating;
  final int reviewCount;
  BookingCard({
    super.key,
    required this.category,
    required this.distance,
    required this.placeName,
    required this.rating,
    required this.reviewCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: Dis.only(right: 10,bottom: 20),
        height: h * .1,
        width: w * 0.4,
        decoration: BoxDecoration(
          color: mainColor.withOpacity(.17),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: 
           Dis.all(
            5
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/dentist.jpg',
                  height: h * 0.2,
                  width: w * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: h * .005,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    placeName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
             Row(
              children: [
                    Text(
                '4.8',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              HugeIcon(
                icon: Icons.star,
                color: mainColor,
                size: 16,
              ),
              ],
             )
                ],
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: distance.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Theme.of(context).colorScheme.surface)),
                  TextSpan(
                      text: ' km',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Theme.of(context).colorScheme.surface)),
                  TextSpan(
                      text: ' • $category',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Theme.of(context).colorScheme.surface)),
                ]),
              ),
            ],
          ),
        ),
      );
  }
}
