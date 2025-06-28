import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/view/widgets/booking_widgets/app_list_tile.dart';
import 'package:manzilbook/view/widgets/booking_widgets/contacts_sheet.dart';

class MyBottomsheet extends StatelessWidget {
  const MyBottomsheet({super.key});

  void showBottom(String title, void Function() onTap, IconData icon,BuildContext context,) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ContactsSheet(title: title, onTap: onTap, icon: icon);
        });
  }
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Container(
      padding: Dis.only(lr: 10,tb: 5),
      height: h * 0.45,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
      
          MyListTile(
            leading: HugeIcon(
                icon: HugeIcons.strokeRoundedBubbleChat,
                color: Theme.of(context).colorScheme.surface),
            title: Text(
              'Chat',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.surface, fontSize: 18),
            ),
            onTap: () {},
          ),
          MyListTile(
            leading: HugeIcon(
                icon: HugeIcons.strokeRoundedCall,
                color: Theme.of(context).colorScheme.surface),
            title: Text(
              'Call',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.surface, fontSize: 18),
            ),
            onTap: () {
              showBottom("+998(90) 123-45-67", (){}, HugeIcons.strokeRoundedCall02, context);
            },
          ),
              MyListTile(
            leading: HugeIcon(
                icon: HugeIcons.strokeRoundedInstagram,
                color: Theme.of(context).colorScheme.surface),
            title: Text(
              'Social Media',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.surface, fontSize: 18),
            ),
            onTap: () {
                            showBottom("Instagram", (){}, HugeIcons.strokeRoundedInstagram, context);

            },
          ),
          MyListTile(
            leading: HugeIcon(
                icon: HugeIcons.strokeRoundedDirections01,
                color: Theme.of(context).colorScheme.surface),
            title: Text(
              'Direction',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.surface, fontSize: 18),
            ),
            onTap: () {},
          ),
          MyListTile(
            leading: HugeIcon(
                icon: HugeIcons.strokeRoundedShare01,
                color: Theme.of(context).colorScheme.surface),
            title: Text(
              'Share',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.surface, fontSize: 18),
            ),
            onTap: () {},
          ),
          MyListTile(
            leading: HugeIcon(
                icon: HugeIcons.strokeRoundedCommentAdd01,
                color: Theme.of(context).colorScheme.surface),
            title: Text(
              'Review',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.surface, fontSize: 18),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
