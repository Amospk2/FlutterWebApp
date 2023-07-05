import 'package:flutter/material.dart';
import 'package:webtest/core/colors.dart';
import 'package:webtest/ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(colorScheme: Palette.colors, useMaterial3: true, ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
