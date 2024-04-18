import 'package:flutter/material.dart';

class AnimatedDotIndecator extends StatelessWidget {
  const AnimatedDotIndecator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      duration: const Duration(milliseconds: 300),
      child: Container(
        decoration: ShapeDecoration(
          color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
      ),
    );
  }
}
