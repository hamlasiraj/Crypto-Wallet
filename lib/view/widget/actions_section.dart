import 'package:animated_crypto_wallet/constant/app_colors.dart';
import 'package:animated_crypto_wallet/view/widget/action_box.dart';
import 'package:flutter/material.dart';

class ActionSection extends StatefulWidget {
  const ActionSection({super.key});

  @override
  State<ActionSection> createState() => _ActionSectionState();
}

class _ActionSectionState extends State<ActionSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Actions",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ActionBox(
                    txt: "Receive",
                    mainImg: "assets/hands.png",
                    boxColor: AppColors.pink),
                ActionBox(
                    txt: "Send",
                    mainImg: "assets/pocket.png",
                    boxColor: AppColors.mediumPurple),
                ActionBox(
                    txt: "Swap",
                    mainImg: "assets/swap.png",
                    boxColor: AppColors.mediumPurple)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
