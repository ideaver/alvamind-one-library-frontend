import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/operasional_card/operasional_card_edit.dart';

import 'package:flutter/material.dart';

import '../../widget/organism/operasional_card/operasional_card.dart';

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
            operasionalCard(),
            operasionalCardDisabled(),
            operasionalCardEdit(),
          ],
        ),
      ),
    );
  }

  Widget operasionalCard() {
    return SampleWrapper(
      title: 'Operasional Card Active',
      widget: OperasionalCard(
        dayTitle: 'Senin',
        time: '08.00 - 17.00',
      ),
    );
  }

  Widget operasionalCardDisabled() {
    return SampleWrapper(
      title: 'Operasional Card Disabled',
      widget: OperasionalCard(
        isDisabled: true,
        dayTitle: 'Selasa',
        time: '08.00 - 17.00',
        chipCloseButton: () {
          // TODO
        },
      ),
    );
  }

  Widget operasionalCardEdit() {
    return SampleWrapper(
      title: 'Operasional Card Edit',
      widget: OperasionalCardEdit(
        dayTitle: 'Selasa',
        time: '08.00 - 17.00',
      ),
    );
  }
}