import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/animated_dot_indecator.dart';

class DotsIndecatorList extends StatelessWidget {
  const DotsIndecatorList({super.key, required this.currentPageIndex});
final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) =>  Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: AnimatedDotIndecator(
                  isActive: currentPageIndex == index,
                ),
          )),
    );
  }
}
