import 'package:flutter/material.dart';
import '../qdata/quest.dart';
import '../widgets/question_answer_widget.dart';

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
          leading: SizedBox(
            width: 20.0,
            height: 20.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[100],
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(vertical: 4.0)),
              onPressed: () {},
              child: const Icon(Icons.arrow_back_ios, color: Colors.purple),
            ),
          ),
          title: const Text("Daily Questions"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: ListView.builder(
            itemCount: generateDailyFilteredList.length,
            itemBuilder: (context, index) => QuestionWidget(
              question: generateDailyFilteredList[index].question!,
              options: questionsList[index].answers!,
            ),
          ),
        ),
      ),
    );
  }
}
