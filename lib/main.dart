import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzilbook/view/pages/create_service_pages/choose_role_page.dart';
import 'package:manzilbook/view/pages/main_pages/home_page.dart';
import 'package:manzilbook/view/theme/theme.dart';
import 'package:manzilbook/view/theme/theme_provider.dart';

import 'view/pages/create_service_pages/enter_service_main_infos.dart';


void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      home:  CreateServicePage(),
      routes: {
        HomePage.routeName:(context)=>const HomePage(),
      },
    );
  }
}
