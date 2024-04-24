import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_dashboard/widgets/custom_container_back_ground.dart';
import 'package:responsive_ui_dashboard/widgets/income_header.dart';

class IncomeSectionSpacial extends StatefulWidget {
  const IncomeSectionSpacial({super.key});

  @override
  State<IncomeSectionSpacial> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeSectionSpacial> {
  @override
  void initState() {
    super.initState();

    sectionData = [
      PieChartSectionData(
          color: const Color(0xff208CC8),
          value: 40,
          radius: 30,                                       
         badgeWidget: const Text('40'),
          title: 'Design service',
          showTitle: true),
      PieChartSectionData(
          color: const Color(0xff4EB7F2),
          value: 25,
           badgeWidget: const Text('25'),
          radius: 30,
          title: 'Design product',
          showTitle: true),
      PieChartSectionData(
          color: const Color(0xff064061),
          value: 20,
           badgeWidget: const Text('20'),
          radius: 30,
          title: 'Product royalti' 'Other',
          showTitle: true),
      PieChartSectionData(
          color: const Color(0xffE2DECD),
          value: 22,
           badgeWidget: const Text('22'),
          radius: 30,
          title: 'Other',
          showTitle: true)
    ];
  }

  late List<PieChartSectionData> sectionData;
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return CustomContainerBackGround(
      child: Column(
        children: [
          const IncomeHeader(),
                  const SizedBox(height: 16,),
          AspectRatio(
            aspectRatio: 4 / 3,
            child: PieChart(
              getDataChart(),
            ),
          ),
        ],
      ),
    );
  }

  PieChartData getDataChart() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          // if (pieTouchResponse == null || pieTouchResponse.touchedSection == null||pieTouchResponse.touchedSection!.touchedSectionIndex==-1) {
          //   setState(() {

          //   });
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          activeIndex = pieTouchResponse!.touchedSection!.touchedSectionIndex;

          setState(() {});
        },
      ),
      sectionsSpace: 0,
      centerSpaceRadius: 60,
      sections: List.generate(sectionData.length, (index) {
        if (activeIndex == index) {
          return sectionData[index].copyWith(
            radius: 40,
            showTitle: true,
                        titlePositionPercentageOffset:index==1?2.3: 1.6

          );
        } else {
          return sectionData[index].copyWith(
            showTitle: false,
          );
        }
      }),
    );
  }
}
