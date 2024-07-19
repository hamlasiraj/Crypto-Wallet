import 'package:animated_crypto_wallet/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AmountCard extends StatefulWidget {
  const AmountCard({super.key});

  @override
  State<AmountCard> createState() => _AmountCardState();
}

class _AmountCardState extends State<AmountCard> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(5),
      color: AppColors.white,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            bottom: 20,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.all(15),
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(250, 18),
                  topRight: Radius.elliptical(250, 18),
                  bottomRight: Radius.elliptical(250, 20),
                  bottomLeft: Radius.elliptical(250, 20),
                ),
                gradient: LinearGradient(
                    colors: [AppColors.darkPurple, AppColors.lightPurple]),
              ),
              child: const Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Text('2.70% Today',
                        style: TextStyle(color: AppColors.white, fontSize: 16)),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Text('\$12,670.90',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -5,
            right: -70,
            child: Container(
              child: Lottie.asset('assets/coin_stack.json',
                  width: 250, height: 150, onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward();
              }),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 30,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.darkPink,
              child: Image.asset('assets/plus_icon.png'),
            ),
          ),
        ],
      ),
    );
  }
}
