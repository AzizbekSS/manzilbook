import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/helper/route/animateroute.dart';
import 'package:manzilbook/view/widgets/home_widgets/category_tile.dart';

class AllPlacesPage extends StatefulWidget {
  const AllPlacesPage({super.key});

  @override
  State<AllPlacesPage> createState() => _AllPlacesPageState();
}

class _AllPlacesPageState extends State<AllPlacesPage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: Dis.only(lr: 8, tb: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundColor:Theme.of(context).colorScheme.onPrimary,
                      child: IconButton(
                        onPressed: () => goBack(context),
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowLeft01,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * .02,
                    ),
                    SizedBox(
                      height: h * .07,
                      width: w * .85,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.transparent
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(
                                color: Colors.transparent
                              ),
                            ),
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.onPrimary,
                            hintText: 'Place and services...',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade600
                            )
                            ),
                      ),
                    ),
                  ],
                ),
      
           SizedBox(
            height: h*.02,
           ),
            CategoryTile(),
            CategoryTile(),
            CategoryTile(),
            CategoryTile(),
            CategoryTile(),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
