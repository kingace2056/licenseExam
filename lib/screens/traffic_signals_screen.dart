import 'package:flutter/material.dart';
import '../constraints/constraints.dart';
import '../qdata/sign_data.dart';
import '../widgets/traffic_signal_widget.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenPaddingHorizontal,
            vertical: screenPaddingVertical),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 1,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
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
