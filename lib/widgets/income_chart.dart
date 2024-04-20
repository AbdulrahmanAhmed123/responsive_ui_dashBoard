


import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  void initState() {
    super.initState();
    sectionData = [
    PieChartSectionData(color: const Color(0xff208CC8), value: 40, radius: 30,showTitle: false),
    PieChartSectionData(color: const Color(0xff4EB7F2), value: 25, radius: 30,showTitle: false),
    PieChartSectionData(color: const Color(0xff064061), value: 20, radius: 30,showTitle: false),
    PieChartSectionData(color: const Color(0xffE2DECD), value: 22, radius: 30,showTitle: false)
  ];
  }
    late List<PieChartSectionData> sectionData;
    int activeIndex=-1;
  

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4/3,
      child: PieChart(getDataChart(),),
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
            activeIndex =pieTouchResponse?.touchedSection?.touchedSectionIndex?? -1;
          activeIndex = pieTouchResponse!.touchedSection!.touchedSectionIndex;
          setState(() {
            
          });
        },
      ),

      sectionsSpace: 0,
      centerSpaceRadius: 50,
      sections:
          List.generate(sectionData.length, (index) {
            if(activeIndex==index){
                  return sectionData[index].copyWith(
                    radius: 40,
                  );
            }
            else {  
              return sectionData[index];
          

   } }),
    );
  }
}
