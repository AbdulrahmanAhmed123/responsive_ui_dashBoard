
import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';
import 'package:responsive_ui_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesActiveItem extends StatelessWidget {
  const AllExpensesActiveItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0xffF1F1F1),
            )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image, imageBackGround: Colors.white.withOpacity(0.1), imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          FittedBox(
            child: Text(
              itemModel.title,
              style: StylesTextApp.styleSemiBold16.copyWith(color:  Colors.white,),
            ),
          ),
          
          const SizedBox(height: 8),
          FittedBox(
            child: Text(
              itemModel.date,
              style: StylesTextApp.styleRegular14.copyWith(color: const Color(0xffFAFAFA)),
            ),
          ),
          
          const SizedBox(height: 16),
          FittedBox(
            child: Text(
              itemModel.price,
              style: StylesTextApp.styleSemiBold24.copyWith(color:  Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}
class AllExpensesINActiveItem extends StatelessWidget {
  const AllExpensesINActiveItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0xffF1F1F1),
            )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image, imageBackGround: null, imageColor: null,
          ),
          const SizedBox(height: 34),
          FittedBox(
            child: Text(
              itemModel.title,
              style: StylesTextApp.styleSemiBold16,
            ),
          ),
          
          const SizedBox(height: 8),
          FittedBox(
            child: Text(
              itemModel.date,
              style: StylesTextApp.styleRegular14,
            ),
          ),
          
          const SizedBox(height: 16),
          FittedBox(
            child: Text(
              itemModel.price,
              style: StylesTextApp.styleSemiBold24,
            ),
          ),
        ],
      ),
    );
  }
}
