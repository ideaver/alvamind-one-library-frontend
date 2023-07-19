import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  final List<ChartData> chartData;
  const Chart({
    super.key,
    required this.chartData,
  });

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfCartesianChart(
      enableAxisAnimation: true,
      primaryYAxis: NumericAxis(labelFormat: '{value}K'),
      primaryXAxis: CategoryAxis(),
      series: <ChartSeries>[
        StackedColumnSeries<ChartData, String>(
          borderRadius: BorderRadius.circular(10),
          width: 0.3,
          dataSource: widget.chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y1,
        ),
        StackedColumnSeries<ChartData, String>(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.elliptical(0, 100),
            bottomRight: Radius.elliptical(0, 100),
          ),
          width: 0.3,
          dataSource: widget.chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y2,
        ),
        StackedColumnSeries<ChartData, String>(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.elliptical(0, 100),
            bottomRight: Radius.elliptical(0, 100),
          ),
          width: 0.3,
          dataSource: widget.chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y3,
        ),
        StackedColumnSeries<ChartData, String>(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.elliptical(0, 100),
            bottomRight: Radius.elliptical(0, 100),
          ),
          width: 0.3,
          dataSource: widget.chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y4,
        )
      ],
    ));
  }
}

class ChartData {
  ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
  final String x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;
}
