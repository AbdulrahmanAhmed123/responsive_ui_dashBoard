import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/sizeconfig.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobilelayout,
    required this.desktoblayout,
    required this.tabletlayout,
  });
  final WidgetBuilder mobilelayout, desktoblayout, tabletlayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constrains) {
          double constrains =MediaQuery.sizeOf(context).width;
          if (constrains < SizeConfig.tabletlayoutWidth) {
            return  mobilelayout(context);
          } else if (constrains< SizeConfig.desktoblayoutWidth) {
           
            return  tabletlayout(context);
          } else {
            return  desktoblayout(context);
          }
        },
      );
  }
}