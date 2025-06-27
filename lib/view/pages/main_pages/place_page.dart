import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/view/theme/color.dart';
import 'package:manzilbook/view/widgets/booking_widgets/app_list_tile.dart';
import 'package:manzilbook/view/widgets/booking_widgets/booking_card.dart';
import 'package:manzilbook/view/widgets/booking_widgets/bottomsheet.dart';
import 'package:manzilbook/view/widgets/app_widgets/button.dart';
import 'package:manzilbook/view/widgets/card_widgets/comment.dart';
import 'package:manzilbook/view/widgets/card_widgets/contact_tile.dart';
import 'package:manzilbook/view/widgets/app_widgets/label_row.dart';
import 'package:manzilbook/view/widgets/create_service_widgets/service_card.dart';

class PlacePage extends StatefulWidget {
  const PlacePage({super.key});

  @override
  State<PlacePage> createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
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
                padding:EdgeInsetsGeometryTween(
                  begin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  end: const EdgeInsets.only(left: 20, right: 20, top: 20),
                ).lerp(0.5),
                height: h * 0.65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
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
                      SizedBox(
                        height: h * .03,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Button(
                            h: h * 0.06,
                            onTap: () {},
                            w: w * 0.73,
                            child: Text(
                              'Book',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Button(
                            h: h * 0.06,
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return MyBottomsheet();
                                  });
                            },
                            w: w * 0.16,
                            child: HugeIcon(
                              icon: HugeIcons.strokeRoundedMore02,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'OPEN ',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '• From 9AM to 8PM',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Distance: ',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextSpan(
                                  text: '3.4 km',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      LabelRow(label: 'Products and Service'),
                      SizedBox(
                        height: h * .03,
                      ),
                      SizedBox(
                        height: h * .4,
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return ServiceCard(
                                price: 500000,
                                serviceName: 'Tooth Extraction',
                              );
                            }),
                      ),
                      ListTile(
                        leading: Text(
                          '4.5',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        title: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 24,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 25,
                            ),
                            Icon(Icons.star, color: Colors.amber, size: 26),
                          ],
                        ),
                        subtitle: Text(
                          '16 reviews',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Comment(),
                      Comment(),
                      Comment(),
                      Comment(),
                      Comment(),
                      SizedBox(
                        height: h * .03,
                      ),
                      LabelRow(label: 'Similar places'),
                      SizedBox(
                        height: h * .02,
                      ),
                      SizedBox(
                        height: h * .4,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return BookingCard(
                                category: 'Dentist',
                                distance: 5,
                                placeName: 'Holaa',
                                rating: 4,
                                reviewCount: 23,
                                onTap: () {},
                              );
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Contacts',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      ContactTile(
                        leadingIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedSmartPhone01,
                            color: Theme.of(context).colorScheme.primary),
                        onTap: () {},
                        title: 'Social Media',
                      ),
                      ContactTile(
                        leadingIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedSmartPhone01,
                            color: Theme.of(context).colorScheme.primary),
                        onTap: () {},
                        title: 'Social Media',
                      ),
                      ContactTile(
                        leadingIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedSmartPhone01,
                            color: Theme.of(context).colorScheme.primary),
                        onTap: () {},
                        title: 'Social Media',
                      ),
                      ContactTile(
                        leadingIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedSmartPhone01,
                            color: Theme.of(context).colorScheme.primary),
                        onTap: () {},
                        title: 'Social Media',
                      ),
                      ContactTile(
                        leadingIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedSmartPhone01,
                            color: Theme.of(context).colorScheme.primary),
                        onTap: () {},
                        title: 'Social Media',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
