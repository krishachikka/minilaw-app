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
    question: "What was the big problem for the girl?",
    options: [
      "Getting married early",
      "Making new friends",
      "Going to the city alone",
    ],
    correctAnswerIndex: 0, // Getting married early
  ),
  Question(
    question: "How did the girl fix her problem?",
    options: [
      "Ran away",
      "Asked her teacher for help",
      "Forgot about her dreams",
    ],
    correctAnswerIndex: 1, // Asked her teacher for help
  ),
  Question(
    question: "What happened after the girl and her teacher went to the city?",
    options: [
      "She got lost",
      "She missed her village",
      "She still got married",
    ],
    correctAnswerIndex: 1, // She missed her village
  ),
];
