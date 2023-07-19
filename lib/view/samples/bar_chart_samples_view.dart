import 'package:alvamind_library/view/samples/sample_wrapper.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../widget/organism/bar_chart/bar_chart.dart';
import '../../widget/organism/bar_chart/chart.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';

class BarChartSamplesView extends StatefulWidget {
  const BarChartSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-bar-chart-samples';

  @override
  State<BarChartSamplesView> createState() => _BarChartSamplesViewState();
}

class _BarChartSamplesViewState extends State<BarChartSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bar Chart Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            barChartOmzet(),
            barChartLaba(),
          ],
        ),
      ),
    );
  }

  int tagSelected = 0;
  int tagSelected2 = 0;

  Widget barChartOmzet() {
    return SampleWrapper(
      title: 'Bar Chart Omzet',
      widget: BarChart(
        textTypeChart: 'Omzet',
        textDateRange: '1 Jan 2023 - 31 Juli 2023',
        countTotal: 'Rp. 687.375.337',
        countTransaction: '1000',
        tagBar: TagsOrganism(
          listChips: const [
            'Drop Service',
            'Self Service',
            'Delivery',
            'Home Service',
          ],
          selected: -1,
          onTap: (value) {
            // TODO
            setState(() {
              tagSelected = value;
            });
          },
        ),
        barChart: tagSelected == 0
            ? Chart(
                chartData: [
                  ChartData('Jan', 14, 11, 18, 23),
                  ChartData('Feb', 18, 6, 6, 24),
                  ChartData('Mar', 16, 10, 15, 20),
                  ChartData('Apr', 12, 10, 14, 20),
                  ChartData('Mei', 10, 16, 8, 14),
                  ChartData('Jun', 18, 16, 18, 24),
                  ChartData('Jul', 21, 16, 8, 8),
                ],
              )
            : tagSelected == 1
                ? Chart(
                    chartData: [
                      ChartData('Jan', 12, 10, 14, 20),
                      ChartData('Feb', 14, 12, 18, 23),
                      ChartData('Mar', 16, 10, 15, 20),
                      ChartData('Apr', 18, 26, 18, 24),
                      ChartData('Mei', 18, 4, 6, 24),
                      ChartData('Jun', 10, 6, 8, 14),
                      ChartData('Jul', 51, 16, 8, 8),
                    ],
                  )
                : tagSelected == 2
                    ? Chart(
                        chartData: [
                          ChartData('Jan', 18, 16, 18, 24),
                          ChartData('Feb', 12, 10, 14, 20),
                          ChartData('Mar', 21, 16, 8, 8),
                          ChartData('Apr', 18, 6, 6, 24),
                          ChartData('Mei', 16, 10, 15, 20),
                          ChartData('Jun', 10, 16, 8, 14),
                          ChartData('Jul', 14, 11, 18, 23),
                        ],
                      )
                    : Chart(
                        chartData: [
                          ChartData('Jan', 12, 10, 14, 20),
                          ChartData('Feb', 14, 11, 18, 23),
                          ChartData('Mar', 16, 10, 15, 20),
                          ChartData('Apr', 18, 16, 18, 24),
                          ChartData('Mei', 18, 6, 6, 24),
                          ChartData('Jun', 10, 16, 8, 14),
                          ChartData('Jul', 21, 16, 8, 8),
                        ],
                      ),
      ),
    );
  }

  Widget barChartLaba() {
    return SampleWrapper(
      title: 'Bar Chart Laba',
      widget: BarChart(
          textTypeChart: 'Laba Rugi',
          textDateRange: '1 Jan 2023 - 31 Juli 2023',
          countTotal: '- Rp687.375.337',
          countTotalColor: AppColors.redLv1,
          countTransaction: '1000',
          tagBar: TagsOrganism(
            listChips: const [
              'Pemasukan',
              'Pengeluaran',
            ],
            onTap: (value) {
              // TODO
              setState(() {
                tagSelected2 = value;
              });
            },
          ),
          barChart: tagSelected2 == 0
              ? Chart(
                  chartData: [
                    ChartData('Jan', 14, 11, 18, 23),
                    ChartData('Feb', 18, 6, 6, 24),
                    ChartData('Mar', 16, 10, 15, 20),
                    ChartData('Apr', 12, 10, 14, 20),
                    ChartData('Mei', 10, 16, 8, 14),
                    ChartData('Jun', 18, 16, 18, 24),
                    ChartData('Jul', 21, 16, 8, 8),
                  ],
                )
              : Chart(
                  chartData: [
                    ChartData('Jan', 12, 10, 14, 20),
                    ChartData('Feb', 14, 12, 18, 23),
                    ChartData('Mar', 16, 10, 15, 20),
                    ChartData('Apr', 18, 26, 18, 24),
                    ChartData('Mei', 18, 4, 6, 24),
                    ChartData('Jun', 10, 6, 8, 14),
                    ChartData('Jul', 51, 16, 8, 8),
                  ],
                )),
    );
  }
}
