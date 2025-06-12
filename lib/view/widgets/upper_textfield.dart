import 'package:flutter/material.dart';

class UpperTextfield extends StatelessWidget {
  const UpperTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      readOnly: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_outlined),
        suffixIcon: Icon(Icons.arrow_forward_ios_outlined),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onPrimary,
        hintText: "All Places",
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
     enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent
      ),
      borderRadius: BorderRadius.circular(20)
     )
      ),
    );
  }
}