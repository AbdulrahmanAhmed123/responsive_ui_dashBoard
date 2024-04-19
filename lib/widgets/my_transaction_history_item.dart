import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/my_transaction_item_model.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';

class MyTransactionHistoryItem extends StatelessWidget {
  const MyTransactionHistoryItem(
      {super.key, required this.myTransactionItemModel});
  final MyTransactionItemModel myTransactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            myTransactionItemModel.title,
            style: StylesTextApp.styleSemiBold16
                .copyWith(color: const Color(0xff064061)),
          ),
        ),
        trailing: FittedBox(
                    alignment: Alignment.centerRight,

          fit: BoxFit.scaleDown,
          child: Text(
            myTransactionItemModel.amount,
            style: StylesTextApp.styleSemiBold20.copyWith(
                color: myTransactionItemModel.transactionStatus ==
                        TransactionStatus.deposit
                    ? const Color(0xff7DD97B)
                    : const Color(0xffF3735E)),
          ),
        ),
        subtitle: FittedBox(
                    alignment: Alignment.centerLeft,

          fit: BoxFit.scaleDown,
          child: Text(
            myTransactionItemModel.date,
            style: StylesTextApp.styleRegular16
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
        ),
      ),
    );
  }
}
