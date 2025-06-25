import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/util/padding/app_padding.dart';
import 'package:manzilbook/helper/util/route/animateroute.dart';
import 'package:manzilbook/view/widgets/notificatons.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedDelete02,
                  color: Theme.of(context).colorScheme.surface))
        ],
        title: Text('Notifications'),
        leading: IconButton(
          onPressed: () => goBack(context),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedArrowLeft01,
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
      ),
      body: ListView.builder(
        padding: Dis.only(lr: 8,tb: 10),
        itemCount: 5,
        itemBuilder: (context, index) {
        return Notificatons(
            text:
                "Mavzularning orasida esa o'zbek media bozori, hozir ko'rinmayotgan mashhurlar, tugatilishi kerak bo'lgan Instagram trendlari, Teacher A'zam va Kunduziyning to'yi, farzandga uy qilib berishdan oldin nima qilish kerakligi, kontent saviyasi qanday o'lchanishi haqida gaplashdik.",
            title: "O'zbek media bozori va undagi o'zgarishlar",
            date: DateTime(2025));
      }),
    );
  }
}
