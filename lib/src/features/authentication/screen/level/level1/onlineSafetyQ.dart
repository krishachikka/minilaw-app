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
    "What should you do if a game asks for your personal information like your address and bank account details?",
    options: [
      "Fill in the information immediately",
      "Ask a parent or guardian for help",
      "Ignore the request and continue playing",
    ],
    correctAnswerIndex: 1, // Ask a parent or guardian for help
  ),
  Question(
    question: "Why is it important to keep personal information safe online?",
    options: [
      "To make friends",
      "To protect against identity theft and scams",
      "Because everyone else is doing it",
    ],
    correctAnswerIndex: 1, // To protect against identity theft and scams
  ),
  Question(
    question:
    "What could the boy have done differently to prevent his parents  money from losing?",
    options: [
      "Share his personal information with more people",
      "Ask his parents before filling in any personal details online",
      "Keep playing and hope the problem goes away",
    ],
    correctAnswerIndex:
    1, // Ask his parents before filling in any personal details online
  ),
];
