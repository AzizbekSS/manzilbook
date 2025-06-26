import 'package:flutter/material.dart';
import 'package:manzilbook/helper/util/padding/app_padding.dart';
import 'package:manzilbook/view/pages/create_service_pages/contacts_page.dart';
import 'package:manzilbook/view/pages/create_service_pages/createtilerow.dart';
import 'package:manzilbook/view/pages/create_service_pages/enter_service_main_infos.dart';

class CreateServer extends StatefulWidget {
  const CreateServer({super.key});

  @override
  State<CreateServer> createState() => CreateServerState();
}

class CreateServerState extends State<CreateServer> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body:ListView(
          padding: Dis.only(lr: 8,tb: 10),
          children:[
            CreateTileRow(),
           SizedBox(
            height: h*.84,
            width: double.maxFinite,
            child: PageView(
              children: [
                EnterServiceMainInfos(),
                ContactsPage(),
              ],
            ),
           ),
           SizedBox(
            height: h*.01,
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('Previous')),
              ElevatedButton(onPressed: (){}, child: Text('Next')),
            ],
           )

          ]
        )
      ),
    );
  }
}