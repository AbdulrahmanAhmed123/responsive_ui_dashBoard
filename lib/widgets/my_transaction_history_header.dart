import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';

class MyTransactionHistoryHeader extends StatelessWidget {
  const MyTransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
         Expanded(
          child: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              'Transaction History',
              style: StylesTextApp.styleSemiBold20(context),
            ),
          ),
        ),
     
        Expanded(
            child: FittedBox(
                alignment: AlignmentDirectional.centerEnd,
                fit: BoxFit.scaleDown,
                child: Text(
                  'See all',
                  style: StylesTextApp.styleMedium16(context)
                      .copyWith(color: const Color(0xff4EB7F2)),
                ))),
      ],
    );
  }
}
