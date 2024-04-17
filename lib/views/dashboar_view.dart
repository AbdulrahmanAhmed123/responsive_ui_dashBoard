import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_ui_dashboard/widgets/dashboard_desktob_layout.dart';

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobilelayout: (context) => const SizedBox(),
        tabletlayout: (context) => const SizedBox(),
        desktoblayout: (context) => const DashBoardDesktobLayout(),
      ),
    );
  }
}
