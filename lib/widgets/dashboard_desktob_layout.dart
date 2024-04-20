import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_dashboard/widgets/allexpenses_quickinvoice.dart';
import 'package:responsive_ui_dashboard/widgets/card__transaction_history_section.dart';
import 'package:responsive_ui_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_ui_dashboard/widgets/income_section.dart';

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
          flex: 3,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
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
        Expanded(
          flex: 2,
          child: SingleChildScrollView(

            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
            SizedBox(
              height: 40,
            ),
            MyCardTransactionHistorySection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
                        ],
                      ),
          ),
        ),
      ],
    );
  }
}
