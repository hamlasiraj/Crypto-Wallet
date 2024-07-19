import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class ActionBox extends StatelessWidget {
  final String txt;
  final String mainImg;
  Color? boxColor;
  ActionBox(
      {super.key, required this.txt, required this.mainImg, this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 160,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      child: Stack(
        children: [
          Positioned(
              right: 0,
              top: 30,
              bottom: 0,
              left: 0,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: boxColor, borderRadius: BorderRadius.circular(40)),
              )),
          Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    txt,
                    style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset("assets/arrow_icon.png")
                ],
              )),
          Positioned(
            right: 0,
            top: 5,
            child:
                SizedBox(height: 100, width: 100, child: Image.asset(mainImg)),
          )
        ],
      ),
    );
  }
}
