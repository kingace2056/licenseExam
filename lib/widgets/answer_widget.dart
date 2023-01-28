import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final String answer;
  const Answer({Key? key, required this.answer}) : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  String hiddenAnswer = "";
  bool isVisible = false;
  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  String hideAnswerLikePassword(String answer) {
    int length = answer.length;
    for (int i = 0; i < length; i++) {
      hiddenAnswer += "*";
    }
    return hiddenAnswer;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        width: double.infinity,
        color: Colors.green[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Text("Ans:", style: Theme.of(context).textTheme.displayLarge),
                  const SizedBox(
                    width: 18.0,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                          isVisible
                              ? widget.answer
                              : hideAnswerLikePassword(widget.answer),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                isVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              ),
              onPressed: toggleVisibility,
            )
          ],
        ),
      ),
    );
  }
}
