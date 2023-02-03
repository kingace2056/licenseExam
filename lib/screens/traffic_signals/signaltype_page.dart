import 'package:flutter/material.dart';
import 'package:license_exam/constraints/constraints.dart';
import 'package:license_exam/screens/traffic_signals/traffic_signals_screen.dart';
import 'package:license_exam/widgets/buttons/back_button.dart';

class SignalTypePage extends StatelessWidget {
  const SignalTypePage({super.key});
  static const routename = '/signalType';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Traffic Signals'),
        leading: const BackButtonWidget(),
        centerTitle: true,
        backgroundColor: primWhite,
        elevation: 0,
      ),
      backgroundColor: primWhite,
      body: SingleChildScrollView(
        child: Column(
          //mandatory, warning , info
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, TrafficSignalScreen.routeName,
                  arguments: 'mandatory'),
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.3,
                color: kPrimary,
                child: const Center(
                  child: Text(
                    'Mandatory Signs',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, TrafficSignalScreen.routeName,
                  arguments: 'warning'),
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.3,
                color: kSecondary,
                child: const Center(
                  child: Text(
                    'Warning ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, TrafficSignalScreen.routeName,
                  arguments: 'info'),
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.3,
                color: kSecondary,
                child: const Center(
                  child: Text(
                    'Info signs',
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
      ),
    );
  }
}
