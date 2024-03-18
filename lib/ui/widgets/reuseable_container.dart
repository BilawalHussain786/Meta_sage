import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';

class ReuseableContainer extends StatelessWidget {
  ReuseableContainer({this.url, super.key});
  String? url;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ConstColor.white,
      ),
      child: Image.asset("$url"),
    );
  }
}
