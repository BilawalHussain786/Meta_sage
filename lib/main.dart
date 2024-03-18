import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/ui/widgets/custom_top_bar.dart';
//import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // Flutterwid
  // await Firebase.initializeApp(
  //   options: DefaultFre.currentPlatform,
  // );
  runApp(MetaSageApp());
}

class MetaSageApp extends StatefulWidget {
  const MetaSageApp({super.key});

  @override
  State<MetaSageApp> createState() => _MetaSageAppState();
}

class _MetaSageAppState extends State<MetaSageApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "MetaSage", home: TopBar());
  }
}
