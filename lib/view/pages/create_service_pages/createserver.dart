import 'package:flutter/material.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/helper/route/animateroute.dart';
import 'package:manzilbook/view/pages/create_service_pages/contacts_page.dart';
import 'package:manzilbook/view/pages/create_service_pages/createtilerow.dart';
import 'package:manzilbook/view/pages/create_service_pages/enter_service_main_infos.dart';
import 'package:manzilbook/view/pages/create_service_pages/other_services.dart';
import 'package:manzilbook/view/pages/main_pages/home_page.dart';
import 'package:manzilbook/view/theme/color.dart';

class CreateServer extends StatefulWidget {
  const CreateServer({super.key});

  @override
  State<CreateServer> createState() => CreateServerState();
}

final list = [
  EnterServiceMainInfos(),
  ContactsPage(),
  OtherServices(),
];

int initialIndex = 0;

final PageController controller = PageController(
  initialPage: initialIndex,
);
bool is1stPast = false;
bool is2ndPast = false;
bool isLastPast = false;

class CreateServerState extends State<CreateServer> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: ListView(padding: Dis.only(lr: 8, tb: 10), children: [
            CreateTileRow(
              isFirstPast: is1stPast,
              isSecondPast: is2ndPast,
              isLastPasat: isLastPast,
            ),
            SizedBox(
              height: h * .84,
              width: double.maxFinite,
              child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      initialIndex = value;
                    });
                  },
                  controller: controller,
                  children: list),
            ),
            SizedBox(
              height: h * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if (initialIndex == 1) {
                      controller.animateToPage(0,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceIn);
                      setState(() {
                        is1stPast = false;
                      });
                    } else if (initialIndex == 2) {
                      controller.animateToPage(1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceIn);
                      setState(() {
                        is2ndPast = false;
                      });
                    }
                  },
                  child: Container(
                    height: h * .044,
                    width: w * 0.157,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: mainColor,
                        width: 1.2,
                      ),
                    ),
                    child: Center(
                      child: Text('Previous',
                          style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: mainColor),
                    onPressed: () {
                      if (initialIndex == 0) {
                        controller.animateToPage(1,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.bounceIn);
                        setState(() {
                          is1stPast = true;
                        });
                      } else if (initialIndex == 1) {
                        controller.animateToPage(2,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.bounceIn);
                        setState(() {
                          is2ndPast = true;
                        });
                      } else {
                        animateRightLeft(HomePage(), context);
                      }
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ],
            )
          ])),
    );
  }
}
