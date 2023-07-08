import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/atom/app_divider.dart';
import 'package:flutter/material.dart';

class DividerSamplesView extends StatefulWidget {
  const DividerSamplesView({Key? key}) : super(key: key);

  static const routeName = '/atom-divider-samples';

  @override
  State<DividerSamplesView> createState() => _DividerSamplesViewState();
}

class _DividerSamplesViewState extends State<DividerSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Divider Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultDivider(),
            verticalDivider(),
            horizontalDividerCustomStyle(),
          ],
        ),
      ),
    );
  }

  Widget defaultDivider() {
    return const SampleWrapper(
      title: 'Default Divider',
      widget: AppDivider(),
    );
  }

  Widget verticalDivider() {
    return const SampleWrapper(
      title: 'Vertical Divider',
      widget: SizedBox(
        height: 100,
        child: AppDivider(
          isVertical: true,
        ),
      ),
    );
  }

  Widget horizontalDividerCustomStyle() {
    return const SampleWrapper(
      title: 'Horizontal Divider Cutom Style',
      widget: AppDivider(
        color: AppColors.primary,
        thickness: 2,
        padding: EdgeInsets.all(12),
      ),
    );
  }
}
