import 'package:flutter/material.dart';
import '../../constraints/constraints.dart';
import '../../qdata/sign_data.dart';
import 'traffic_signal_widget.dart';

class TrafficSignalScreen extends StatelessWidget {
  static const routeName = '/traffic_signals';
  const TrafficSignalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Traffic Signals'),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: primWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenPaddingHorizontal,
            vertical: screenPaddingVertical),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisExtent: MediaQuery.of(context).size.height * 0.18,
            mainAxisSpacing: 3,
          ),
          itemBuilder: (context, index) {
            var key = DataFiles.mandatorySigns.keys.elementAt(index);
            var value = DataFiles.mandatorySigns[key];
            return TrafficSignalCard(image: key, text: value!);
          },
          itemCount: DataFiles.mandatorySigns.length,
        ),
      ),
    );
  }
}
