import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_dashboard/models/income_item_model.dart';
import 'package:responsive_ui_dashboard/widgets/custom_container_back_ground.dart';
import 'package:responsive_ui_dashboard/widgets/income_chart.dart';
import 'package:responsive_ui_dashboard/widgets/income_header.dart';
import 'package:responsive_ui_dashboard/widgets/income_item_model_list.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackGround(
        child:    Column(
          children: [
            IncomeHeader(),
                  SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: IncomeChart()),
                SizedBox(width: 16,),
                      
                Expanded(child: IncomeDetails()),
              ],
            )
          ],
        ),
    //      Column(
    //   children: [
    
    //     Row(
    //       children: [
    //         //Expanded(child: IncomeChart()),
    //         Expanded(child: IncomeDetails()),
    //       ],
    //     ),
    //   ],
    // )
    );
  }
}

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
static List<IncomeItemModel>incomeItemModelList = [
  const IncomeItemModel(
      title: 'Design service',
      amount: '40%',
      dotsIndecatorColor: Color(0xff208CC8)),
  const IncomeItemModel(
      title: 'Design product',
      amount: '25%',
      dotsIndecatorColor: Color(0xff4EB7F2)),
  const IncomeItemModel(
      title: 'Product royalti',
      amount:'20%',
      dotsIndecatorColor: Color(0xff064061),),
        const IncomeItemModel(
      title: 'Other',
      amount: '22%',
      dotsIndecatorColor: Color(0xffE2DECD)),
];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      itemCount: incomeItemModelList.length,
      itemBuilder: (BuildContext context, int index) 
    { 

      return IncomeItemDetailsModel(incomeItemModel: incomeItemModelList[index],);
     },);
  }
}
