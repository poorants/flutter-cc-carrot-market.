// import 'package:carrot_market_cc/firebase_options.dart';
import 'package:carrot_market_cc/pages/list-type/list-type.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

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
    return const MaterialApp(
      home: ListTypePage(),
    );
  }
}
