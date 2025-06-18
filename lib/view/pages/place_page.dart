import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PlacePage extends StatefulWidget {
  const PlacePage({super.key});

  @override
  State<PlacePage> createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            CarouselSlider(items: [
              Image.asset('assets/images/dentist.jpg')
            ], options: CarouselOptions(),)

          ],        ),
      ),
    );
  }
}