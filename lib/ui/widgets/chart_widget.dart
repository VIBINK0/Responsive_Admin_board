import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/app_colors.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // width: 200,
        height: 200,
        child: Stack(
          alignment: Alignment.center,
          children: [
            PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: [
                  PieChartSectionData(
                    color: Colors.red,
                    showTitle: false,
                    radius: 25,
                    value: 25,
                  ),
                  PieChartSectionData(
                    color: Colors.blue,
                    radius: 20,
                    showTitle: false,
                    value: 22,
                  ),
                  PieChartSectionData(
                    color: Colors.black,
                    radius: 13,
                    value: 19,
                    showTitle: false,
                  ),
                  PieChartSectionData(
                    color: Colors.white,
                    radius: 15,
                    showTitle: false,
                    value: 16,
                  ),
                  PieChartSectionData(
                    color: AppColors.primaryColor.withOpacity(0.1),
                    radius: 25,
                    showTitle: false,
                    value: 13,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '29.1',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: AppColors.primaryTextColor,
                        fontSize: 33,
                      ),
                ),
                Text(
                  'of 128 GB',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
