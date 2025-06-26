// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/view/theme/color.dart';

class EnterServiceMainInfos extends StatefulWidget {
  const EnterServiceMainInfos({super.key});

  @override
  State<EnterServiceMainInfos> createState() => _EnterServiceMainInfosState();
}

class _EnterServiceMainInfosState extends State<EnterServiceMainInfos> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();


  XFile? _logo;
  List<XFile> _images = [];

  Future<void> _pickLogo() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _logo = image;
      });
    }
  }

  Future<void> _pickImages() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile>? images = await picker.pickMultiImage();
    if (images != null && images.isNotEmpty) {
      setState(() {
        _images = images;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: Dis.only(lr: 8, tb: 10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Chooser your logo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: h * .02,
                ),
                Center(
                  child: GestureDetector(
                    onTap: _pickLogo,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: mainColor,
                      backgroundImage: _logo != null
                          ? Image.file(
                              File(_logo!.path),
                              fit: BoxFit.cover,
                            ).image
                          : null,
                      child: _logo == null
                          ? Icon(Icons.camera_alt,
                              size: 36, color: theme.primaryColor)
                          : null,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * .02,
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Service nomi",
                    labelStyle: TextStyle(color: theme.colorScheme.primary),
                    floatingLabelStyle: TextStyle(color: mainColor),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 1.2,
                      ),
                    ),
                    prefixIcon: HugeIcon(
                        icon: HugeIcons.strokeRoundedWhatsappBusiness,
                        color: theme.colorScheme.primary),
                  ),
                  validator: (v) =>
                      v == null || v.isEmpty ? "Nomini kiriting" : null,
                ),
                SizedBox(
                  height: h * .03,
                ),
                TextFormField(
                  controller: _aboutController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: "Service haqida to'liq ma'lumot",
                    floatingLabelStyle: TextStyle(color: mainColor),
                    labelStyle: TextStyle(color: theme.colorScheme.primary),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 1.2,
                      ),
                    ),
                    prefixIcon: HugeIcon(
                        icon: HugeIcons.strokeRoundedInformationSquare,
                        color: theme.colorScheme.primary),
                  ),
                  validator: (v) =>
                      v == null || v.isEmpty ? "Ma'lumot kiriting" : null,
                ),
                SizedBox(
                  height: h * .03,
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: "Service manzili",
                    floatingLabelStyle: TextStyle(color: mainColor),
                    labelStyle: TextStyle(color: theme.colorScheme.primary),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 1.2,
                      ),
                    ),
                    prefixIcon: HugeIcon(
                        icon: HugeIcons.strokeRoundedLocation01,
                        color: theme.colorScheme.primary),
                  ),
                  validator: (v) =>
                      v == null || v.isEmpty ? "Manzil kiriting" : null,
                ),
                  SizedBox(
                  height: h * .03,
                ),
                Text(
                  "Manzil rasmlari",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: _pickImages,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surface.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: HugeIcon(icon: HugeIcons.strokeRoundedImageUpload  , color:theme.primaryColor,size: 26, ),
                        ),
                      ),
                      ..._images.map((img) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(
                                File(img.path),
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
          
                Center(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        backgroundColor: mainColor),
                    icon: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Saqlash",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {
                   
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
