import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/app_expanel_list.dart';
import 'package:flutter/material.dart';

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
            questionAccordionBlack()
          ],
        ),
      ),
    );
  }

  Widget questionAccordion() {
    return const SampleWrapper(
      title: 'Question Card',
      widget: AppExpansionListTile(
        title: 'Question',
        expand: true,
        backgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            ),
          )
        ],
      ),
    );
  }

  Widget questionAccordionBlack() {
    return SampleWrapper(
      title: 'Question Card Black',
      widget: const AppExpansionListTile(
        title: 'Question',
        expand: true,
        backgroundColor: Colors.black,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
