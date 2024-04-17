import 'package:flutter/material.dart';

class CustomContainerBackGround extends StatelessWidget {
  const CustomContainerBackGround({
    super.key, required this.child, this.padding, this.color, this.image,
  });
final Widget child;
final double? padding;
final Color? color;
final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding??20.0),
      decoration: ShapeDecoration(
          image: image==null?null: DecorationImage(image: AssetImage(image!)),
          color: color??Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          )),
      child: child,
    );
  }
}
