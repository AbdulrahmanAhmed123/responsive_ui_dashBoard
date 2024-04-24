import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_ui_dashboard/widgets/dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
            Expanded(flex: 2,child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
      Expanded(flex: 3,child: DashBoardMobileLayout(),),
      ],
    );
  }
}
