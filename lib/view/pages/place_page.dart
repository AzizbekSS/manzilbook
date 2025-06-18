import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/util/padding/app_padding.dart';
import 'package:manzilbook/view/widgets/app_list_tile.dart';
import 'package:manzilbook/view/widgets/bottomsheet.dart';
import 'package:manzilbook/view/widgets/button.dart';

class PlacePage extends StatefulWidget {
  const PlacePage({super.key});

  @override
  State<PlacePage> createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: h * 0.4,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: CarouselSlider(
                        items: [
                          Image.asset(
                            'assets/images/dentist.jpg',
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                          Image.asset(
                            'assets/images/dentist.jpg',
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                          Image.asset(
                            'assets/images/dentist.jpg',
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                          Image.asset(
                            'assets/images/dentist.jpg',
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                        options: CarouselOptions(
                          onPageChanged: ((index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          }),
                          viewportFraction: 1,
                          aspectRatio: 9 / 16,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInBack,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: double.maxFinite,
                  ),
                ],
              ),
              Container(
                padding: Dis.only(lr: 5, tb: 8),
                height: h * 0.65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    MyListTile(
                      leading: Image.asset(
                        'assets/images/save.png',
                        height: 50,
                      ),
                      title: Text(
                        'Dolce',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.surface,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      subtitle: Text('Dentist • Yunosobod'),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Button(
                          h: h * 0.06,
                          onTap: () {},
                          w: w * 0.75,
                          child: Text(
                            'Book',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Button(
                          h: h * 0.06,
                          onTap: () {
                            showModalBottomSheet(context: context, builder: (context){
                              return MyBottomsheet();
                            });
                          },
                          w: w * 0.2,
                          child: HugeIcon(
                              icon: HugeIcons.strokeRoundedMore02,
                              color: Colors.white,
                            ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
