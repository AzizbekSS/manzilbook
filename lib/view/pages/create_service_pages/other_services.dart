import 'package:flutter/material.dart';

import '../../theme/color.dart';

class OtherServices extends StatefulWidget {
  const OtherServices({super.key});

  @override
  State<OtherServices> createState() => _OtherServicesState();
}

class _OtherServicesState extends State<OtherServices> {
    final TextEditingController _servicesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    final h=MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      backgroundColor: theme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
                  TextFormField(
                  controller: _servicesController,
                  maxLines: 2,
                  decoration: InputDecoration(
                    labelText: "Qo'shimcha xizmat turlari",
                    floatingLabelStyle: TextStyle(color: mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: mainColor,
                          width: 1.2,
                        )),
                    prefixIcon: const Icon(Icons.miscellaneous_services),
                  ),
                ),
          ],
        ),
      ),
    ));
  }
}