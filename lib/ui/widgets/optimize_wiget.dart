import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';

class OptimizeProducts extends StatefulWidget {
  const OptimizeProducts({super.key});

  @override
  State<OptimizeProducts> createState() => _OptimizeProductsState();
}

class _OptimizeProductsState extends State<OptimizeProducts> {
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text("Optimized for productivity"),
        SizedBox(height: 200),
        Container(
          width: 800,
          //width: size.width * 0.7,
          height: 600,
          // height: size.height * 0.9,
          color: ConstColor.white,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Image.asset(
                  ConstImages.speed1,
                  fit: BoxFit.cover,
                  //width: size.width * 1,
                ),
              ),
              Positioned(
                top: -100,
                left: -180,
                child: Container(
                  color: ConstColor.white,
                  child: Image.asset(
                    ConstImages.speed3,
                    height: 300,
                    width: 250,
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                left: -150,
                child: Container(
                  width: 400,
                  height: 250,
                  color: ConstColor.white,
                  child: Image.asset(
                    ConstImages.speed4,
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                bottom: -40,
                right: -150,
                child: Container(
                  width: 250,
                  height: 300,
                  color: ConstColor.white,
                  child: Image.asset(
                    ConstImages.speed2,
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
