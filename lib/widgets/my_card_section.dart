import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';
import 'package:responsive_ui_dashboard/widgets/animated_dot_indecator_list.dart';
import 'package:responsive_ui_dashboard/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  PageController controllerPage = PageController();
int currentPageIndex = 0;
@override
  void initState() {
    super.initState();
    controllerPage.addListener(() {
      setState(() {
        currentPageIndex = controllerPage.page!.round();
      });
    });
  }
  @override
  void dispose() {
    super.dispose();
    controllerPage.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
       const Text('My card',style:StylesTextApp.styleSemiBold20 ,),
        const SizedBox(
          height: 20,
        ),
          MyCardPageView(controllerPage: controllerPage,),
        const SizedBox(
          height: 20,
        ),DotsIndecatorList(currentPageIndex: currentPageIndex,),
        
      ],
    );
  }
}
