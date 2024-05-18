class Question {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}

List<Question> questions = [
  Question(
    question:
        "How would you handle a challenging situation where someone is causing trouble for you and your friends?",
    options: [
      "Try to reason with the person causing trouble",
      "Seek help from a trusted adult or authority figure",
      "Ignore the troublemaker and focus on enjoying your time with your friends",
    ],
    correctAnswerIndex: 1, // Seek help from a trusted adult or authority figure
  ),
  Question(
    question:
        "Have you ever felt lost or separated from your friends? How did you find your way back to them?",
    options: [
      "Reached out to them through phone or social media",
      "Stayed calm and retraced my steps to find them",
      "Waited in a familiar spot until they came looking for me",
    ],
    correctAnswerIndex: 1, // Stayed calm and retraced my steps to find them
  ),
  Question(
    question:
        "How can you contribute to creating a safe and joyful environment for yourself and others?",
    options: [
      "Being kind and respectful to others",
      "Standing up against bullying or injustice",
      "Participating in activities that bring joy and positivity into your life",
    ],
    correctAnswerIndex: 1, // Standing up against bullying or injustice
  ),
];
