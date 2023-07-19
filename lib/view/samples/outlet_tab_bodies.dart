import 'package:alvamind_library/widget/organism/outlet_tab_bodies/outlet_summary_body.dart';
import 'package:flutter/material.dart';
import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';

import '../../widget/molecule/app_button.dart';
import '../../widget/organism/bar_chart/bar_chart.dart';
import '../../widget/organism/bar_chart/chart.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import 'sample_wrapper.dart';

class OutletTabBodiesSamplesView extends StatefulWidget {
  const OutletTabBodiesSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-outlet-tab-bodies-samples';

  @override
  State<OutletTabBodiesSamplesView> createState() => _OutletTabBodiesSamplesViewState();
}

class _OutletTabBodiesSamplesViewState extends State<OutletTabBodiesSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Outlet Tab Bodies Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            outletSummaryBody(),
          ],
        ),
      ),
    );
  }

  Widget outletSummaryBody() {
    return SampleWrapper(
      title: 'OutletSummaryBody',
      widget: OutletSummaryBody(
        countMachine: 15,
        countConsument: 100,
        countEmployees: 100,
        countTransaction: 25,
        barChart: barChartWrapper(),
        statusComplainWidget: ListCard(
          leftIcon: CustomIcon.walletIcon,
          rightIcon: Icons.chevron_right_rounded,
          title: 'Selasa, 23 Juni 2023',
          subtitle: 'Status Complain',
          textTags: 'Proses',
          onTapChevronButton: () {
            // TODO
          },
          onTapCard: () {
            // TODO
          },
        ),
        deleteButton: AppButton(
          text: 'Hapus',
          textColor: AppColors.black,
          buttonColor: AppColors.redLv1.withOpacity(0.2),
          onTap: () {},
        ),
      ),
    );
  }

  Widget barChartWrapper() {
    return Column(
      children: [
        BarChart(
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
        SizedBox(
          height: AppSizes.padding,
        ),
        BarChart(
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
      ],
    );
  }
}
