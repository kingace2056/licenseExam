import 'package:flutter/material.dart';
import 'package:license_exam/constraints/constraints.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final Widget title;

  const CustomAppBar({
    Key? key,
    required this.leading,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
        ),
        child: SafeArea(
            child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 0,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(
            horizontal: screenPaddingHorizontal,
            vertical: 21,
          )),
        )));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
