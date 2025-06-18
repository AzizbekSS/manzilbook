import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PlacePage extends StatefulWidget {
  const PlacePage({super.key});

  @override
  State<PlacePage> createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {

int _currentIndex=0; 
int indeks=0;
bool isCurrentIndex(int index){
  if(index==_currentIndex){
    return true;
  }else{
    return false;
  }
}
 

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
                          onPageChanged: ((index,reason){
                            setState(() {
                              _currentIndex=index;
                              _currentIndex=indeks;
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
                height: h * 0.65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
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
