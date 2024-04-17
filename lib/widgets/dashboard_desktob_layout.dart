import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_dashboard/widgets/allexpenses_quickinvoice.dart';
import 'package:responsive_ui_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_ui_dashboard/widgets/my_card.dart';

class DashBoardDesktobLayout extends StatelessWidget {
  const DashBoardDesktobLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Flexible(
                    child: AllExpensesQuickInvoice(),
                  ),
                ],
              ),
            ),
          ]),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded( child: Mycard()),
      ],
    );
  }
}
