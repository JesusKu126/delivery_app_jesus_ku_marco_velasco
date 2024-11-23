import 'package:delivery_app_jesus_ku_marco_velasco/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/pages/login_page.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/models/restaurant.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      //theme provider
      ChangeNotifierProvider(create: (_) => ThemeProvider()),

      //restaurant provider
      ChangeNotifierProvider(create: (_) => Restaurant())
    ],
    child: const MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(
        onTap: () {},
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
