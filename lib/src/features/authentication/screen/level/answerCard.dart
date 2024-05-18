import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  final int currentIndex;
  final String question;
  final bool isSelected;
  final int? selectedAnswerIndex;
  final int correctAnswerIndex;

  const AnswerCard({
    required this.currentIndex,
    required this.question,
    required this.isSelected,
    required this.selectedAnswerIndex,
    required this.correctAnswerIndex,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.purple.shade100!;
    if (isSelected) {
      backgroundColor = selectedAnswerIndex == correctAnswerIndex
          ? Colors.green[200]!
          : Colors.red[200]!;
    }

    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          question,
          style: TextStyle(
            color: isSelected
                ? Colors.white
                : selectedAnswerIndex != null &&
                selectedAnswerIndex == correctAnswerIndex
                ? Colors.green[900]
                : null,
          ),
        ),
      ),
    );
  }
}
