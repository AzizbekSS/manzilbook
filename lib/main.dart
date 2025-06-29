import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzilbook/view/pages/main_pages/home_page.dart';
import 'package:manzilbook/view/theme/theme.dart';
import 'package:manzilbook/view/theme/theme_provider.dart';



void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      home:  HomePage(),
      routes: {
        HomePage.routeName:(context)=>const HomePage(),
      },
    );
  }
}
