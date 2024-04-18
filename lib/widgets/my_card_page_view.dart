import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.controllerPage});
final PageController controllerPage ;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller:controllerPage ,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => const Mycard()),
    );
  }
}
