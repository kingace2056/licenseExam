import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:license_exam/constraints/constraints.dart';
import 'package:license_exam/constraints/icon_list.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: screenPaddingVertical / 2,
          left: screenPaddingHorizontal,
          bottom: screenPaddingVertical),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: primGrey,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.04),
                blurRadius: 4.0,
                offset: const Offset(0, 0)),
            BoxShadow(
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.06),
                blurRadius: 8.0,
                offset: const Offset(0, 0))
          ]),
      child: SvgPicture.asset(
        IconsList.backIcon,
        alignment: Alignment.center,
      ),
    );
  }
}
