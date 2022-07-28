import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinyte_ui/app/common/values/app_colors.dart';
import 'package:infinyte_ui/app/common/values/styles/app_text_style.dart';
import 'package:infinyte_ui/app/widgets/custom_dotted_line.dart';

class PriceChart extends StatelessWidget {
  const PriceChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> points = [
      ChartData(2010, 20),
      ChartData(2011, 30),
      ChartData(2012, 40),
      ChartData(2013, 50),
      ChartData(2014, 60),
      ChartData(2016, 40),
      ChartData(2018, 30),
      ChartData(2020, 49),
      ChartData(2022, 52),
      ChartData(2024, 60)
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              5,
              (index) => Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF1F4F6)),
                    child: Container(
                      height: 18.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                      ),
                      child: Center(
                        child: Text("6M",
                            style: AppTextStyle.regularStyle.copyWith(
                                fontSize: 14, color: AppColors.homesubTitle)),
                      ),
                    ),
                  )),
        ),
        SizedBox(
          height: 10.h,
        ),
        const DottedLine(),
        SizedBox(
          height: 9.h,
        ),
        SizedBox(
          height: 166.h,
          child: LineChart(
            LineChartData(
              titlesData: FlTitlesData(
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                          showTitles: true,
                          interval: 5,
                          getTitlesWidget: ((value, meta) =>
                              const SizedBox())))),
              gridData: FlGridData(show: false),
              borderData: FlBorderData(
                  show: true,
                  border: const Border(
                      bottom: BorderSide(width: 1, color: Colors.black))),
              lineBarsData: [
                LineChartBarData(
                    aboveBarData: BarAreaData(show: false),
                    spots: points
                        .map((point) => FlSpot(point.x, point.y))
                        .toList(),
                    isCurved: true,
                    dotData: FlDotData(
                      show: false,
                    ),
                    color: Color(0xff63729F)),
              ],
            ),
            swapAnimationDuration: Duration(milliseconds: 150), // Optional
            swapAnimationCurve: Curves.linear, //
          ),
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final double x;
  final double y;
}
