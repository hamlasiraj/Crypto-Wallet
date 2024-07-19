import 'package:animated_crypto_wallet/view/widget/actions_section.dart';
import 'package:animated_crypto_wallet/view/widget/amount_card.dart';
import 'package:animated_crypto_wallet/view/widget/movers_section.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            centerTitle: false,
            backgroundColor: AppColors.white,
            toolbarHeight: 90,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello Fabio",
                        style: TextStyle(color: AppColors.pink, fontSize: 24)),
                    Text("Welcome Back!",
                        style: TextStyle(color: AppColors.black, fontSize: 32)),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.lightGrey),
                  child: Image.asset('assets/icon_notifications.png'),
                )
              ],
            ),
            elevation: 0,
          ),
        ],
        body: Container(
          color: AppColors.white,
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [AmountCard(), ActionSection(), MoversSection()],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: AppColors.white,
        color: AppColors.darkPurple,
        buttonBackgroundColor: AppColors.darkPurple,
        items: [
          Image.asset("assets/Home.png"),
          Image.asset("assets/wallet.png"),
          const SizedBox(),
          Image.asset("assets/market.png"),
          Image.asset("assets/setting.png"),
        ],
        index: currentPageIndex,
        letIndexChange: (index) => true,
        onTap: (index) {
          currentPageIndex = index;
        },
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            final CurvedNavigationBarState? navBarState =
                _bottomNavigationKey.currentState;
            navBarState?.setPage(2);
          },
          backgroundColor: AppColors.mediumPurple,
          child: Image.asset("assets/swap-fill.png"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
