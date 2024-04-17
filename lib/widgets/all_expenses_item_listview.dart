import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_ui_dashboard/utlies/images_app.dart';
import 'package:responsive_ui_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int isIndexSelect = 0;
  bool isActiveSelect = false;
  @override
  Widget build(BuildContext context) {
    final List<AllExpensesItemModel> expensesItemModel = [
      const AllExpensesItemModel(
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129',
        image: StylesImageApp.styleImagesBalance,
      ),
      const AllExpensesItemModel(
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129',
        image: StylesImageApp.styleImagesIncome,
      ),
      const AllExpensesItemModel(
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129',
        image: StylesImageApp.styleImagesExpenses,
      ),
    ];
    return Row(
        children: expensesItemModel.asMap().entries.map((e) {
      int index = e.key;
      AllExpensesItemModel item = e.value;

      return Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isIndexSelect = index;
            });
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: index != 1 ? 0 : 6,right: index != 1 ? 0 : 6,
            ),
            child: AllExpensesItem(
              itemModel: item,
              isActive: isIndexSelect == index,
            ),
          ),
        ),
      );
    }).toList());
  }
}
