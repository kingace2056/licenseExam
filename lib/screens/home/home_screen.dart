import 'package:flutter/material.dart';
import 'package:license_exam/constraints/constraints.dart';
import 'package:license_exam/screens/traffic_signals/signaltype_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/dailyq'),
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.3,
              color: kPrimary,
              child: const Center(
                child: Text(
                  'Daily Questions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, SignalTypePage.routename),
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.3,
              color: kSecondary,
              child: const Center(
                child: Text(
                  'Traffic signals ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
