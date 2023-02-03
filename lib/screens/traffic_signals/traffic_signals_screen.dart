import 'package:flutter/material.dart';

import '../../constraints/constraints.dart';
import '../../qdata/sign_data.dart';
import 'widgets/traffic_signal_widget.dart';

class TrafficSignalScreen extends StatefulWidget {
  static const routeName = '/traffic_signals';

  TrafficSignalScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TrafficSignalScreen> createState() => _TrafficSignalScreenState();
}

class _TrafficSignalScreenState extends State<TrafficSignalScreen> {
  late Object args;

  @override
  void didChangeDependencies() {
    args = ModalRoute.of(context)!.settings.arguments!;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> data = args == 'warning'
        ? DataFiles.warningSigns
        : args == 'mandatory'
            ? DataFiles.mandatorySigns
            : DataFiles.infoSign;
    return Scaffold(
      appBar: AppBar(
        title: Text(args == 'warning'
            ? 'Warning Signs'
            : args == 'mandatory'
                ? 'Mandatory Signs'
                : 'Info Signs'),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: kPrimary),
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
            var key = data.keys.elementAt(index);
            var value = data[key];
            return TrafficSignalCard(image: key, text: value!);
          },
          itemCount: data.length,
        ),
      ),
    );
  }
}
