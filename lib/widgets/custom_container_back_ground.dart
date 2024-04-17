import 'package:flutter/material.dart';

class CustomContainerBackGround extends StatelessWidget {
  const CustomContainerBackGround({
    super.key, required this.child, this.padding,
  });
final Widget child;
final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding??20.0),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          )),
      child: child,
    );
  }
}
