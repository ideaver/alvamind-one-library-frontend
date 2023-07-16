import 'package:alvamind_library/app/theme/app_sizes.dart';

import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/time_field/time_field.dart';

import 'package:flutter/material.dart';

class TimeFieldSamplesView extends StatefulWidget {
  const TimeFieldSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-time-field-samples';

  @override
  State<TimeFieldSamplesView> createState() => _TimeFieldSamplesViewState();
}

class _TimeFieldSamplesViewState extends State<TimeFieldSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Time Field Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            timeField(),
          ],
        ),
      ),
    );
  }

  Widget timeField() {
    return SampleWrapper(
      title: 'Time Field',
      widget: TimeField(),
    );
  }
}
