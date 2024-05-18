import 'package:get/get.dart';

class LevelCompletionController extends GetxController {
  RxList<bool> levelCompletedStatus = List.generate(6, (_) => false).obs;

  void setLevelCompleted(int levelNo, bool completed) {
    levelCompletedStatus[levelNo - 1] = completed;
  }

  bool isLevelCompleted(int levelNo) {
    return levelCompletedStatus[levelNo - 1];
  }

  bool isLevelUnlocked(int levelNo) {
    if (levelNo > 1) {
      return isLevelCompleted(levelNo - 1);
    } else {
      return true;
    }
  }
}
