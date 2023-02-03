import 'package:flutter/material.dart';
import 'package:license_exam/screens/dailyq/widgets/answer_widget.dart';

import '../../../constraints/constraints.dart';

class QuestionWidget extends StatelessWidget {
  final String question;
  final Map<String, bool> options;
  const QuestionWidget(
      {Key? key, required this.question, required this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String answer = "";
    final optionList = options.keys.toList();

    return Flex(
      direction: Axis.vertical,
      children: [
        // Questions Here
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            width: double.infinity,
            color: primGrey,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Q. ",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        question,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(height: 12.0),
                      ...optionList.map((option) {
                        if (options[option] == true) {
                          answer = option;
                        }
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: Text(
                              "${optionList.indexOf(option) + 1}. $option",
                              style: Theme.of(context).textTheme.displaySmall),
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Space
        const SizedBox(
          height: 9.0,
        ),
        // Answers Here
        AnswerWidget(answer: answer)
      ],
    );
  }
}
