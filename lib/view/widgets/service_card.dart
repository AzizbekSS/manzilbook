import 'package:flutter/material.dart';
import 'package:manzilbook/helper/util/padding/app_padding.dart';

class ServiceCard extends StatelessWidget {
  final String serviceName;
  final int price;

  const ServiceCard({
    super.key,
    required this.price,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dis.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/dentist.jpg',
              height: h * 0.3,
            ),
          ),
        ),
        Text(
          serviceName,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "$price sum",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
