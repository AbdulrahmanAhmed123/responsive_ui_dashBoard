import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/custom_button.dart';
import 'package:responsive_ui_dashboard/widgets/title_custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleCustomTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleCustomTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleCustomTextField(
                title: 'Item name',
                hint: 'Type item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleCustomTextField(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(child: CustomButton(title: 'Add more details',color:Color(0xff4EB7F2) ,backGroundCOlor:Colors.white ,)),
            SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton(title: 'Send Money',)),
          ],
        ),
      ],
    );
  }
}
