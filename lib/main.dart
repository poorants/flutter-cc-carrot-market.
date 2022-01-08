import 'package:carrot_market_cc/pages/home.dart';
import 'package:carrot_market_cc/provider/theme_provider.dart';
import 'package:flutter/material.dart';

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes().customTheme,
      home: Home(),
    );
  }
}
