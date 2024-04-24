import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_dashboard/widgets/allexpenses_quickinvoice.dart';
import 'package:responsive_ui_dashboard/widgets/card__transaction_history_section.dart';
import 'package:responsive_ui_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_ui_dashboard/widgets/income_section.dart';
import 'package:responsive_ui_dashboard/widgets/income_section_spacial.dart';

class DashBoardDesktobLayout extends StatelessWidget {
  const DashBoardDesktobLayout({super.key});

  @override
  Widget build(BuildContext context) {
   double spacialWidth=MediaQuery.sizeOf(context).width;
    return  Row(
      children: [
        const Expanded(child: CustomDrawer()),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 32,
                ),
                const Expanded(
                 flex: 2,
                  child: Column(
                    children: [
                     SizedBox(
                  height: 40,
                ),
                     AllExpensesQuickInvoice(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
             
             Expanded(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        
                           const MyCardTransactionHistorySection(),
                           const SizedBox(
                height: 24,
                           ),
                         spacialWidth>1400&&spacialWidth>1100?   const IncomeSection():const IncomeSectionSpacial(),
                          ],
                        ),
             ),
               
                 ],
            ),
          ),
        ),  ],
    );
  }
}
