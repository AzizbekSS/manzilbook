
import 'package:flutter/material.dart';
import 'package:manzilbook/helper/util/route/animateroute.dart';

import '../widgets/role_card.dart';

class ChooseRolePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
      final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Text(
          "Choose Your Role",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.surface,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              RoleCard(
                icon: Icons.storefront,
                title: "Seller",
                description: "List your products and manage your store.",
                color: Colors.orange.shade400,
                onTap: () {
                },
              ),
              SizedBox(
              height:   h*.1
              ),
              RoleCard(
                icon: Icons.shopping_bag,
                title: "Consumer",
                description: "Browse and buy products easily.",
                color: Colors.green.shade400,
                onTap: () {
                  animateRightLeftNamed('homepage', context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
