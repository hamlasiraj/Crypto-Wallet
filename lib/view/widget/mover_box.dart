import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class MoverBox extends StatelessWidget {
  final String percentage;
  final String curPrice;
  final String graph;
  const MoverBox(
      {super.key,
      required this.percentage,
      required this.curPrice,
      required this.graph});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.lightGrey),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(percentage,
                  style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              Text(curPrice,
                  style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Align(alignment: Alignment.bottomRight, child: Image.asset(graph))
        ],
      ),
    );
  }
}
