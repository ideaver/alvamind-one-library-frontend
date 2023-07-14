import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_card_container.dart';

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../app/theme/app_colors.dart';

class OperasionalCardSamplesView extends StatefulWidget {
  const OperasionalCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-operasional-card-samples';

  @override
  State<OperasionalCardSamplesView> createState() => _OperasionalCardSamplesViewState();
}

class _OperasionalCardSamplesViewState extends State<OperasionalCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Operasional Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                AppCardContainer(
                  padding: EdgeInsets.all(AppSizes.padding * 1.2),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.blackLv7,
                      offset: Offset(0, 4),
                      blurRadius: 60,
                      spreadRadius: 0,
                    ),
                  ],
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              toggle(),
                              SizedBox(
                                width: AppSizes.padding,
                              ),
                              Text(
                                'Senin',
                                style: AppTextStyle.bold(size: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '08.00 - 17.00',
                                style: AppTextStyle.medium(size: 16),
                              ),
                              SizedBox(
                                width: AppSizes.padding,
                              ),
                              toggle(),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppSizes.padding,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: AppTextStyle.medium(size: 14),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  // Widget cardPinPoinDelivery() {
  //   return SampleWrapper(
  //     title: 'Card PinPoin & Delivery',
  //     widget:
  //   );
  // }

  Widget toggle() {
    return ToggleSwitch(
      minWidth: 20,
      minHeight: 20,
      cornerRadius: 20.0,
      activeBgColors: [
        [
          Colors.white
        ],
        [
          Colors.white
        ]
      ],
      initialLabelIndex: 1,
      totalSwitches: 2,
      radiusStyle: true,
      inactiveBgColor: AppColors.primary,
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}
