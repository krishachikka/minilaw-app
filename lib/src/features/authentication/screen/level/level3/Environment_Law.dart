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
    question: "What will you do after noticing the dirty river water?",
    options: [
      "Continue playing near the river, ignoring the pollution.",
      "Try to clean up the river by yourself.",
      "Inform an adult about the pollution and ask for help.",
    ],
    correctAnswerIndex:
        2, // Inform an adult about the pollution and ask for help.
  ),
  Question(
    question:
        "How will you react when you see the ball falling into the polluted river?",
    options: [
      "Jump into the river immediately to retrieve the ball.",
      "Leave the ball and find another activity to do.",
      "Try to use a stick or a long object to fish the ball out safely.",
    ],
    correctAnswerIndex:
        2, // Try to use a stick or a long object to fish the ball out safely.
  ),
  Question(
    question:
        "What action will you take regarding the nearby factory causing pollution?",
    options: [
      "Ignore the factory and continue playing.",
      "Confront the workers at the factory about the pollution.",
      "Inform authorities or adults about the factory's pollution and ask for action to be taken.",
    ],
    correctAnswerIndex:
        2, // Inform authorities or adults about the factory's pollution and ask for action to be taken.
  ),
];
