import 'package:flutter/material.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';

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
      child: Padding(
        padding: Dis.only(
          right: h * 0.02,
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/dentist.jpg',
                height: h * 0.22,
                width: w * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              placeName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: distance.toString(),style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:Theme.of(context).colorScheme.surface
                  )
                ),
                TextSpan(
                  text: ' km',style: TextStyle(
                     fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:Theme.of(context).colorScheme.surface
                  )
                ),
                 TextSpan(
                  text: ' • $category',style: TextStyle(
                     fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:Theme.of(context).colorScheme.surface
                  )
                ),
              ]
            ),),
            RichText(
              text: TextSpan(
              children: [
                TextSpan(
                  text: rating.toString(),style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color:Colors.amber
                  )
                ),
                TextSpan(
                  text: ' ⭐',style: TextStyle(
                     fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color:Theme.of(context).colorScheme.surface
                  )
                ),
                 TextSpan(
                  text: '  $reviewCount reviews',style: TextStyle(
                     fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color:Theme.of(context).colorScheme.primary
                  )
                ),
              ]
            ),),
          ],
        ),
      ),
    );
  }
}
