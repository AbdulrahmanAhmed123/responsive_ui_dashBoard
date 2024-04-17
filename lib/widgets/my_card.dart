import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_dashboard/utlies/images_app.dart';
import 'package:responsive_ui_dashboard/widgets/custom_container_back_ground.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
        aspectRatio: 420 / 215,
        child: CustomContainerBackGround(
          image: StylesImageApp.styleImagesMask,
          color:   Color(0xff4eb7f2),
          padding: 0,
          child: SizedBox(),
        ));
  }
}
