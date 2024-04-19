
import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/my_transaction_item_model.dart';
import 'package:responsive_ui_dashboard/widgets/my_transaction_history_item.dart';

class MyTransactionHistoryItemList extends StatelessWidget {
  const MyTransactionHistoryItemList({super.key});

  static List<MyTransactionItemModel> listMyTransactionItemModel = [
    const MyTransactionItemModel(
        title: 'Cash Withdrawal',
        amount: r'$20,129',
        date: '13 Apr, 2022 ',
        transactionStatus: TransactionStatus.withdrawal),
    const MyTransactionItemModel(
        title: 'Landing Page project',
        amount: r'$2,000',
        date: '13 Apr, 2022 at 3:30 PM',
        transactionStatus: TransactionStatus.deposit),
    const MyTransactionItemModel(
        title: 'Juni Mobile App project',
        amount: r'$20,129',
        date: '13 Apr, 2022 at 3:30 PM',
        transactionStatus: TransactionStatus.deposit),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: listMyTransactionItemModel
          .map((e) => MyTransactionHistoryItem(
                myTransactionItemModel: e,
              ))
          .toList(),
    );
    
    
    // ListView.builder(
    //   padding: EdgeInsets.zero,
    //   itemCount: listMyTransactionItemModel.length,
    //   shrinkWrap: true,
    //   itemBuilder: (BuildContext context, int index) {
    //     return MyTransactionHistoryItem(
    //         myTransactionItemModel: listMyTransactionItemModel[index]);
    //   },
    // );
  }
}
