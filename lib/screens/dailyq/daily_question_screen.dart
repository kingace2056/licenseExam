import 'package:flutter/material.dart';
import 'package:license_exam/constraints/constraints.dart';
import 'package:license_exam/widgets/buttons/back_button.dart';
import '../../qdata/quest.dart';
import 'widgets/question_answer_widget.dart';

class StatefulWrapper extends StatefulWidget {
  final Function onInit;
  final Widget child;
  const StatefulWrapper({super.key, required this.onInit, required this.child});
  @override
  State<StatefulWrapper> createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    super.initState();
    widget.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class DailyQuestion extends StatelessWidget {
  const DailyQuestion({Key? key}) : super(key: key);
  List generateQuesOfDayGen() {
    int dateVar = DateTime.now().month + DateTime.now().day;
    List quesList = [];
    for (int i = 0; i <= 5; i++) {
      int temp = dateVar;
      int temp2 = temp * (i + DateTime.now().weekday) + 1;
      if (temp2 <= 202) {
        quesList.add(temp2);
      } else {
        quesList.add(dateVar +
            DateTime.now().weekday * (i + DateTime.now().weekday) +
            3);
      }
    }
    return quesList;
  }

  List get generateDailyFilteredList {
    List quesList = generateQuesOfDayGen();
    List filteredList = [];
    for (int i = 0; i < quesList.length; i++) {
      filteredList.add(questionsList[quesList[i]]);
    }
    return filteredList;
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        generateQuesOfDayGen();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primWhite,
          leadingWidth: MediaQuery.of(context).size.width * 0.15,
          leading: BackButtonWidget(),
          title: const Text("Daily Questions"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenPaddingHorizontal,
          ),
          child: ListView.builder(
              itemCount: generateDailyFilteredList.length,
              itemBuilder: (context, index) {
                double paddingBottom;
                if (index == generateDailyFilteredList.length - 1) {
                  paddingBottom = 8;
                } else {
                  paddingBottom = 24;
                }
                return Padding(
                  padding: EdgeInsets.only(bottom: paddingBottom),
                  child: QuestionWidget(
                    question: generateDailyFilteredList[index].question!,
                    options: questionsList[index].answers!,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
