import 'package:flutter/material.dart';

import '../../../helper/padding/app_padding.dart';

class ImagesRow extends StatelessWidget {
  const ImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: h*.27,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: Dis.only(right: 10,tb: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/dentist.jpg",
                    height: h * .1,
                    width: w * .4,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              );
            },),);
  }
}
