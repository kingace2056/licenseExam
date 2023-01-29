import 'package:flutter/material.dart';
import 'package:license_exam/screens/traffic_signals_screen.dart';
import './constraints/constraints.dart';
import 'screens/daily_question_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimary,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[50],
          toolbarTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                titleLarge: TextStyle(
                  color: kPrimary,
                  fontSize: 24.0,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              )
              .bodyMedium,
          titleTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                titleLarge: TextStyle(
                  color: kPrimary,
                  fontSize: 24.0,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              )
              .titleLarge,
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
              // Style Answer Text
              displayLarge: TextStyle(
                color: primWhite,
                fontSize: 20.0,
                fontFamily: 'Inter',
              ),
              // Style Question Text
              displayMedium: TextStyle(
                color: kPrimary,
                fontSize: 20.0,
                fontFamily: 'Inter',
              ),
              // Style Options Text
              displaySmall: TextStyle(
                color: primBlack,
                fontSize: 16.0,
                fontFamily: 'Inter',
              ),
            ),
      ),
      routes: {
        '/': (context) => const DailyQuestion(),
        TrafficSignalScreen.routeName: (context) => const TrafficSignalScreen(),
      },
    );
  }
}
