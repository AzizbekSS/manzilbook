import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    final h=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.primaryColor,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [

            ],
          ),),
      ),
      ),
    );
  }
}