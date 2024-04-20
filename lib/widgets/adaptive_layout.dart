import 'package:flutter/material.dart';

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
          if (constrains.maxWidth < 650) {
            return  mobilelayout(context);
          } else if (constrains.maxWidth < 1100) {
            return  tabletlayout(context);
          } else {
            return  desktoblayout(context);
          }
        },
      );
  }
}