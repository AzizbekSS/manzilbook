import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzilbook/helper/util/padding/app_padding.dart';
import 'package:manzilbook/main.dart';
import 'package:manzilbook/view/theme/theme_provider.dart';
import 'package:manzilbook/view/widgets/appbar.dart';
import 'package:manzilbook/view/widgets/upper_textfield.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeNotifierProvider);
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final isDark = themeMode == ThemeMode.dark;
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar:PreferredSize(
        preferredSize:Size.fromHeight(h*0.065 ),
        child: MyAppBar(),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: themeNotifier.toggleTheme,
        child: Icon(
          isDark ? Icons.light_mode : Icons.dark_mode,
        ),
      ),



      body: Padding(
        padding: Dis.only(lr: 8,tb: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
      UpperTextfield()
            ],
          ),
        ),
      ),
    );
  }
}
