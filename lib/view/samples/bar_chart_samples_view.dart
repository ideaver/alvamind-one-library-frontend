import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_icon_button.dart';
import 'package:alvamind_library/widget/molecule/app_long_card.dart';
import 'package:flutter/material.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';

import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import 'sample_wrapper.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLongCard(
                  padding: EdgeInsets.all(0),
                  children: [
                    Row(
                      children: [
                        AppIconButton(
                            buttonColor: AppColors.blueLv5,
                            icon: Icon(
                              Icons.insert_chart_outlined_rounded,
                              color: AppColors.primary,
                            ),
                            onTap: () {}),
                        SizedBox(
                          width: AppSizes.padding,
                        ),
                        Text(
                          'Omzet',
                          style: AppTextStyle.bold(size: 24),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: AppSizes.padding,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1 Jan 2023 - 31 Juli 2023', style: AppTextStyle.regular(size: 14, color: AppColors.blackLv4)),
                    SizedBox(height: AppSizes.padding / 2),
                    Text('Rp 687.375.337', style: AppTextStyle.bold(size: 24)),
                    SizedBox(height: AppSizes.padding / 2),
                    Text('1.000 Transaksi', style: AppTextStyle.regular(size: 14, color: AppColors.blackLv4)),
                  ],
                ),
                SizedBox(
                  height: AppSizes.padding,
                ),
                TagsOrganism(
                  listChips: const [
                    'Drop Service',
                    'Self Service',
                    'Delivery',
                    'Home Service',
                  ],
                  selected: -1,
                  onTap: (value) {
                    // TODO
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
