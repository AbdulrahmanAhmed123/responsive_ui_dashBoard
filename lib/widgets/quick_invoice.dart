import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/custom_container_back_ground.dart';
import 'package:responsive_ui_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_ui_dashboard/widgets/quich_invoice_form.dart';
import 'package:responsive_ui_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackGround(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          QuickInvoiceForm(),
         
        ],
      ),
    );
  }
}
