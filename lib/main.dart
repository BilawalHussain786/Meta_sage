import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/ui/widgets/custom_top_bar.dart';

void main() async {
  runApp(const MetaSageApp());
}

class MetaSageApp extends StatefulWidget {
  const MetaSageApp({super.key});

  @override
  State<MetaSageApp> createState() => _MetaSageAppState();
}

class _MetaSageAppState extends State<MetaSageApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "MetaSage",
        home: TabBarExample());
  }
}
