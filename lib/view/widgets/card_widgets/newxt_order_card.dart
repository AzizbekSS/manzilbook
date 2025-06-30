// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/view/theme/color.dart';
import 'package:manzilbook/view/widgets/app_widgets/button.dart';

class NextOrderCard extends StatelessWidget {
  const NextOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return Container(
      padding: Dis.only(lr: 12, tb: 8),
      decoration: BoxDecoration(
        color: mainColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15),
      ),
      height: h * .2,
      width: double.infinity,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 0,
            ),
            title: Text('Dental Health'),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                  'assets/images/dentist.jpg',
                ),
                height: 200,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedWallet01,
                      color: theme.colorScheme.primary,
                      size: 16,
                    ),
                    Text(
                      ' 100 000 sum',
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('      4.6'),
                    HugeIcon(
                      icon: Icons.star,
                      color: mainColor,
                      size: 16,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          Row(
            children: [
              Button(
                  h: h * .06,
                  onTap: () {},
                  w: w * .4,
                  child: Text(
                    '19:24',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: w * .02,
              ),
              Button(
                  h: h * .06,
                  onTap: () {},
                  w: w * .1,
                  child: HugeIcon(
                      icon: HugeIcons.strokeRoundedCall, color: Colors.white)),
              SizedBox(
                width: w * .02,
              ),
              Button(
                  h: h * .06,
                  onTap: () {},
                  w: w * .1,
                  child: HugeIcon(
                      icon: HugeIcons.strokeRoundedMessage01,
                      color: Colors.white)),
              SizedBox(
                width: w * .02,
              ),
              Button(
                  h: h * .06,
                  onTap: () {},
                  w: w * .1,
                  child: HugeIcon(
                      icon: HugeIcons.strokeRoundedLocation01,
                      color: Colors.white)),
                           SizedBox(
                width: w * .02,
              ),
              Button(
                  h: h * .06,
                  onTap: () {},
                  w: w * .1,
                  child: HugeIcon(
                      icon: HugeIcons.strokeRoundedCancel01,
                      color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
