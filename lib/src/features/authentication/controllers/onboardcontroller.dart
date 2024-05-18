import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:minilaw/src/features/authentication/screen/homepage/homepage.dart';
import 'package:minilaw/src/features/authentication/screen/mainScreen/mainScreen.dart';
import '../../../../loginpage.dart';
import '../../../constants/colors.dart';
import '../../../constants/img_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/modelOnBoard.dart';
import '../screen/onBoard/onBoard_widget.dart';
import '../screen/welcome/welcome_screen.dart';


class onBoardController extends GetxController{

  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    kOnBoardpageWidget(model: OnBoardModel(
        image: konB1,
        title: kOnBoardLine1,
        subtitle: kOnBoardSub1,
        count: konBCount1,
        bgColor: konBoard1,
        )
    ),
    kOnBoardpageWidget(model: OnBoardModel(
        image: kRocket,
        title: kOnBoardLine2,
        subtitle: kOnBoardSub2,
        count: konBCount2,
        bgColor: konBoard2,
        )
    ),
    kOnBoardpageWidget(model: OnBoardModel(
        image: konB3,
        title: kOnBoardLine3,
        subtitle: kOnBoardSub3,
        count: konBCount3,
        bgColor: konBoard3,
        )
    )
  ];

  onPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => controller.jumpToPage(page: 2);

  animatetoNextSlide() {
    int nextpage = controller.currentPage + 1;
    if (nextpage < pages.length) {
      controller.animateToPage(page: nextpage);
    } else {
      Get.to(mainScreen());
    }
  }
}