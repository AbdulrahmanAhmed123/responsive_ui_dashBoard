import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_ui_dashboard/widgets/all_expenses_item_listview.dart';
import 'package:responsive_ui_dashboard/widgets/custom_container_back_ground.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
  
    return const CustomContainerBackGround(child:  Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensesItemListView(),
        ],
      ),);
  }
}

