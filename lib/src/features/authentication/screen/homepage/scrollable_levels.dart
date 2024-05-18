import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/img_strings.dart';
import '../../controllers/levelController.dart';
import '../level/startpopup.dart';

class ScrollableLevels extends StatelessWidget {
  final List<String> levelImages = [
    'assets/images/homepage/level1.png',
    'assets/images/homepage/level2.png',
    'assets/images/homepage/level3.png',
    'assets/images/homepage/level4.png',
    'assets/images/homepage/level5.png',
    'assets/images/homepage/level6.png',
  ];
  final List<String> levelNames = [
    'Level 1',
    'Level 2',
    'Level 3',
    'Level 4',
    'Level 5',
    'Level 6',
    // Add more level names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: levelImages.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (index.isEven)
                _buildLevelItem(context, index)
              else
                SizedBox(width: 50.0),
              if (index.isOdd)
                _buildLevelItem(context, index)
              else
                SizedBox(width: 60.0),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLevelItem(BuildContext context, int index) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              _navigateToLevelPopup(context, index);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.transparent,
              ),
              child: Image.asset(
                levelImages[index],
                width: 250,
                height: 190,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            levelNames[index],
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToLevelPopup(BuildContext context, int index) {
    String levelImagePath = '';
    int levelNo = index + 1;

    switch (index) {
      case 0:
        levelImagePath = klevel1pic;
        break;
      case 1:
        levelImagePath = klevel2pic;
        break;
      case 2:
        levelImagePath = klevel3pic;
        break;
      case 3:
        levelImagePath = klevel4pic;
        break;
      case 4:
        levelImagePath = klevel5pic;
        break;
      case 5:
        levelImagePath = klevel6pic;
        break;
      default:
        print('Unknown level index: $index');
        return;
    }

    Get.to(LevelPlayPopup(levelImagePath: levelImagePath, levelNo: levelNo));
  }
}
