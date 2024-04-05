import 'package:flutter/material.dart';

class RichTextwidget extends StatelessWidget {
  RichTextwidget({required this.title, required this.title1, super.key});
  String? title;
  String? title1;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: title1,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class RichTextwidget2 extends StatelessWidget {
  RichTextwidget2({required this.title, required this.title1, super.key});
  String? title;
  String? title1;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: title1,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
