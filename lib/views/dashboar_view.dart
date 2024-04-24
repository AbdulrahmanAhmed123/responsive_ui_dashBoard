
import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/sizeconfig.dart';
import 'package:responsive_ui_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_ui_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_ui_dashboard/widgets/dashboard_desktob_layout.dart';
import 'package:responsive_ui_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_ui_dashboard/widgets/dashboard_tablet_layout.dart';

class ResponsiveDashBoard extends StatefulWidget {
  const ResponsiveDashBoard({super.key});

  @override
  State<ResponsiveDashBoard> createState() => _ResponsiveDashBoardState();
}

class _ResponsiveDashBoardState extends State<ResponsiveDashBoard> {
      GlobalKey<ScaffoldState> keyScaffold = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: keyScaffold,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xfff7f9fa),
      appBar: sizeWidth <SizeConfig.tabletlayoutWidth
          ? AppBar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.white,
              shadowColor: Colors.white,
              scrolledUnderElevation: 0,
              elevation: 0,
              leading: IconButton(
                iconSize: 25,
                onPressed: () {
                  if (sizeWidth<=SizeConfig.tabletlayoutWidth)
                  {
                    keyScaffold.currentState!.openDrawer();
                  }
                 
                },
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff4eb7f2),
                ),
              ),
            )
          : null,
      body: AdaptiveLayout(
        mobilelayout: (context) => const DashBoardMobileLayout(),
        tabletlayout: (context) => const DashBoardTabletLayout(),
        desktoblayout: (context) => const DashBoardDesktobLayout(),
      ),
    );
  }
}
