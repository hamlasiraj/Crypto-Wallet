import 'package:animated_crypto_wallet/constant/app_colors.dart';
import 'package:animated_crypto_wallet/view/widget/mover_box.dart';
import 'package:flutter/material.dart';

class MoversSection extends StatelessWidget {
  const MoversSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Top Movers",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              MoverBox(
                  percentage: "+34.98%",
                  curPrice: "BTC \$21.58",
                  graph: "assets/purple_graph.png"),
              SizedBox(width: 20),
              MoverBox(
                  percentage: "+34.98%",
                  curPrice: "BTC \$21.58",
                  graph: "assets/pink_graph.png")
            ],
          )
        ],
      ),
    );
  }
}
