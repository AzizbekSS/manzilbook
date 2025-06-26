import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/util/padding/app_padding.dart';

import '../../theme/color.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _contactController2 = TextEditingController();
  final TextEditingController _socialController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.primaryColor,
        body: SingleChildScrollView(
          padding: Dis.only(lr: 8, tb: 10),
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h*.03,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,  
                    controller: _contactController,
                    decoration: InputDecoration(
                      labelText: "Aloqa uchun telefon raqami",
                      floatingLabelStyle: TextStyle(color: mainColor),
                      labelStyle: TextStyle(
                        color: theme.colorScheme.primary,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: mainColor,
                            width: 1.2,
                          )),
                      prefixIcon: HugeIcon(
                          icon: HugeIcons.strokeRoundedCall02,
                          color: theme.colorScheme.primary),
                    ),
                    validator: (v) =>
                        v == null || v.isEmpty ? "Kontakt kiriting" : null,
                  ),
                    SizedBox(
                    height: h*.03,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _contactController2,
                    decoration: InputDecoration(
                      labelText: "Aloqa uchun 2-telefon raqam",
                      floatingLabelStyle: TextStyle(color: mainColor),
                      labelStyle: TextStyle(
                        color: theme.colorScheme.primary,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: mainColor,
                            width: 1.2,
                          )),
                      prefixIcon: HugeIcon(
                          icon: HugeIcons.strokeRoundedCall02,
                          color: theme.colorScheme.primary),
                    ),
                    validator: (v) =>
                        v == null || v.isEmpty ? "Kontakt kiriting" : null,
                  ),
                    SizedBox(
                    height: h*.03,
                  ),
                 
                  TextFormField(
                    controller: _socialController,
                    decoration: InputDecoration(
                      labelText:
                          "Ijtimoiy tarmoqlari (Instagram, Telegram va boshqalar)",
                      floatingLabelStyle: TextStyle(color: mainColor),
                      labelStyle: TextStyle(color: theme.colorScheme.primary,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: mainColor,
                          width: 1.2,
                        ),
                      ),
                      prefixIcon: HugeIcon(icon: HugeIcons.strokeRoundedInstagram  , color:theme.colorScheme.primary ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
