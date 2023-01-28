import 'package:flutter/material.dart';
import './constraints/constraints.dart';
import 'screens/daily_question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DailyQuestion(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimary,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[50],
          toolbarTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                titleLarge: const TextStyle(
                  color: Colors.purple,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              )
              .bodyMedium,
          titleTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                titleLarge: const TextStyle(
                  color: Colors.purple,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              )
              .titleLarge,
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
              // Style Answer Text
              displayLarge: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              // Style Question Text
              displayMedium: const TextStyle(
                color: Colors.purple,
                fontSize: 20.0,
              ),
              // Style Options Text
              displaySmall: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
      ),
    );
  }
}
