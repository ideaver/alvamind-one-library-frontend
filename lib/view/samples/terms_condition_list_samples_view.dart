import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_expanel_List.dart';
import '../../widget/organism/accordion/accordion_question_card.dart';

class TermsConditionListSamplesView extends StatefulWidget {
  const TermsConditionListSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-terms-condition-list-samples';

  @override
  State<TermsConditionListSamplesView> createState() => _TermsConditionListSamplesViewState();
}

class _TermsConditionListSamplesViewState extends State<TermsConditionListSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms Condition List Samples')),
      backgroundColor: AppColors.blackLv8,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            termsConditionList()
          ],
        ),
      ),
    );
  }

  Widget termsConditionList() {
    return Column(
      children: [
        ...List.generate(3, (i) {
          return SampleWrapper(
            title: 'Terms Condition List $i',
            widget: AppExpansionListTile(
              title: 'Lorem ipsum dolor sit amet $i',
              titleColor: AppColors.black,
              expand: true,
              backgroundColor: AppColors.white,
              children: [
                QuestionText(
                  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  color: AppColors.black,
                  padding: EdgeInsets.all(0),
                  backgroundColor: AppColors.transparent,
                )
              ],
            ),
          );
        })
      ],
    );
  }
}
