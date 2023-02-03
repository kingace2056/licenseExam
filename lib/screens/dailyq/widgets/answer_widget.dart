import 'package:flutter/material.dart';

class AnswerWidget extends StatefulWidget {
  final String answer;
  const AnswerWidget({Key? key, required this.answer}) : super(key: key);

  @override
  State<AnswerWidget> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  String hiddenAnswer = "";
  bool isVisible = false;
  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
      if (isVisible == true) {
        hiddenAnswer = "";
      }
    });
  }

  // showing number of stars will tell what answer is correct so we use fixed number of stars for all answers
  // String hideAnswerLikePassword(String answer) {
  //   int length = answer.length;
  //   for (int i = 0; i < length; i++) {
  //     hiddenAnswer += "*";
  //   }
  //   return hiddenAnswer;
  // }
  String hideAnswerLikePassword(String answer) {
    return "************";
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
                  Text(
                    "Ans:",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
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
