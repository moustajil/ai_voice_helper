import 'package:aivoicehelper/Pallet.dart';
import 'package:aivoicehelper/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,appBarTheme: AppBarTheme(backgroundColor: Pallete.whiteColor)
      ),
      title: 'Ai Helper',
      home: HomePage(),
    );
  }
}

