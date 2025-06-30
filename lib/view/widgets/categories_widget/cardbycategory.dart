import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/view/theme/color.dart';
import 'package:manzilbook/view/widgets/app_widgets/button.dart';
import 'package:manzilbook/view/widgets/categories_widget/images_row.dart';

class Cardbycategory extends StatelessWidget {
  const Cardbycategory({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return SizedBox(
      height: h * .2,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagesRow(),
          Text(
            'Service name',
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
                  fontSize: 15,
                ),
              ),
              HugeIcon(
                icon: Icons.star,
                color: mainColor,
                size: 16,
              ),
              SizedBox(
                width: w * .03,
              ),
              HugeIcon(
                icon: HugeIcons.strokeRoundedWallet01,
                color: theme.colorScheme.primary,
                size: 16,
              ),
              Text(
                ' 100 000 sum',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: h*.01,),
          Row(
            children: [
              Button(
                h: h * .055,
                onTap: () {},
                w: w * .4,
                child: Text(
                  'BOOK',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: w*.01,),
              Button(
                h: h * 0.055,
                onTap: () {},
                w: w * .08,
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedCall,
                  color: Colors.white,
                  size: 19,
                ),
              ),
              SizedBox(width: w*.01,),
              Button(
                h: h * 0.055,
                onTap: () {},
                w: w * .08,
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedShare01,
                  color: Colors.white,
                  size: 19,
                ),
              ),
            ],
          ),
          SizedBox(height: h*.03,),
        ],
      ),
    );
  }
}
