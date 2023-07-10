import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';

import 'package:flutter/material.dart';

import '../../app/theme/app_text_style.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/molecule/app_expanel_List.dart';
import '../../widget/organism/accordion/accordion_question_card.dart';

class AccordionSamplesView extends StatefulWidget {
  const AccordionSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-accordion-samples';

  @override
  State<AccordionSamplesView> createState() => _AccordionSamplesViewState();
}

class _AccordionSamplesViewState extends State<AccordionSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accordion Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            questionAccordion(),
            questionAccordionBlack(),
            dateInAccordion(),
          ],
        ),
      ),
    );
  }

  Widget questionAccordion() {
    return SampleWrapper(
      title: 'Question Card',
      widget: AppExpansionListTile(
        title: 'Question',
        expand: true,
        backgroundColor: Colors.white,
        children: [
          QuestionText(
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            color: AppColors.black,
          )
        ],
      ),
    );
  }

  Widget questionAccordionBlack() {
    return SampleWrapper(
      title: 'Question Card',
      widget: AppExpansionListTile(
        title: 'Question',
        titleColor: AppColors.white,
        expand: true,
        backgroundColor: AppColors.blackLv1,
        children: [
          QuestionText(
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}

Widget dateInAccordion() {
  return SampleWrapper(
      title: 'Date with Accordion',
      widget: AppExpansionListTile(
        title: 'Title',
        expand: true,
        backgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                AppTextField(
                  hintText: '23 Juni 2023 - 25 Juni 2023',
                  suffixIcon: Icons.calendar_month,
                  iconsColor: AppColors.black,
                  fillColor: AppColors.blackLv10,
                  borderRadius: 16,
                  labelStyle: AppTextStyle.bold(
                    size: 12,
                    color: AppColors.blackLv2,
                  ),
                  textStyle: AppTextStyle.bold(
                    size: 14,
                    color: AppColors.blackLv2,
                  ),
                  hintStyle: AppTextStyle.semibold(
                    size: 14,
                    color: AppColors.blackLv4,
                  ),
                ),
                const SizedBox(height: 18),
                const AppExpansionListTile(
                  title: 'Placeholder',
                  icon: Icons.person,
                  buttonDropColor: AppColors.black,
                  backgroundColor: AppColors.blackLv10,
                  children: [],
                ),
                const SizedBox(height: 18),
                const AppTextField(
                  hintText: '23 Juni 2023 - 25 Juni 2023',
                  minLines: 6,
                  borderRadius: 16,
                  fillColor: AppColors.blackLv10,
                ),
                const SizedBox(height: 18),
                QuestionText(
                  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  padding: const EdgeInsets.all(0),
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ],
      ));
}
