// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/view/theme/color.dart';

class CategoryChips extends StatefulWidget {
  const CategoryChips({super.key});

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {




final List<String> filters=[];
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children:<String>[ 'Rating',"Open 24h",'Open now','Other category'].map((String name){
        return Padding(

          padding: Dis.only(lr: 5),
          child: FilterChip(
            disabledColor: mainColor,
            shadowColor: mainColor,
            surfaceTintColor: mainColor,
            selectedShadowColor: mainColor,
            chipAnimationStyle: ChipAnimationStyle(
              selectAnimation: AnimationStyle(
                curve: Curves.bounceInOut,
              )
            ),
            checkmarkColor: Colors.white,
            labelStyle: TextStyle(color: Colors.white),
            backgroundColor: Colors.grey.shade400,
            label: Text(name), 
           selected: filters.contains(name),
            onSelected: (bool selected){
            setState(() {
              if(selected){
                filters.add(name);
              }else{
                filters.removeWhere((String item)=> item==name);
              }
            });
          }),
        );
      }).toList(),
    );
  }
}