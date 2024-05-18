import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:minilaw/src/features/authentication/controllers/onboardcontroller.dart';
import 'package:minilaw/src/features/authentication/models/modelOnBoard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onBoard_widget.dart';

class onBoard extends StatelessWidget {
  onBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OBcontroller = onBoardController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: OBcontroller.pages,
            liquidController: OBcontroller.controller,
            onPageChangeCallback: OBcontroller.onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
                onPressed: () => OBcontroller.animatetoNextSlide(),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(17),
                ),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      color: Colors.white12, shape: BoxShape.circle
                  ),
                  child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                )
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
                onPressed: () => OBcontroller.skip(),
                child: const Text("SKIP", style: TextStyle(color: Colors.grey),)
            ),
          ),
          Obx(
                () =>
                Positioned(
                  bottom: 10,
                  child: AnimatedSmoothIndicator(
                    activeIndex: OBcontroller.currentPage.value,
                    count: 3,
                    effect: const WormEffect(
                        activeDotColor: Colors.white,
                        dotHeight: 5.0,
                        dotColor: Colors.white24
                    ),
                  ),),
          )
        ],
      ),
    );
  }
}

