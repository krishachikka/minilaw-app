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
        "What would you do if you found a group of sad and tired children working in a workshop?",
    options: [
      "Start playing with them and sharing any toys or treats you have with you.",
      "Go find an adult to help the children.",
      "Walk away and pretend you didn't see anything.",
    ],
    correctAnswerIndex: 1, // Go find an adult to help the children.
  ),
  Question(
    question:
        "You've started playing and sharing gifts with the children, and they seem to be enjoying themselves. What's your next move?",
    options: [
      "Keep playing and giving gifts, enjoying the moment.",
      "Talk to the children about their situation and ask if they want to stop working in the workshop.",
      "Leave them and continue with your own activities.",
    ],
    correctAnswerIndex:
        1, // Talk to the children about their situation and ask if they want to stop working in the workshop.
  ),
  Question(
    question:
        "The atmosphere in the workshop has changed, and now the children look happier. What do you think should happen next?",
    options: [
      "Keep visiting them occasionally to play and bring more gifts.",
      "Talk to adults or authorities about helping the children leave the workshop and get proper care and education.",
      "Forget about them and move on with your own life.",
    ],
    correctAnswerIndex:
        1, // Talk to adults or authorities about helping the children leave the workshop and get proper care and education.
  ),
];
