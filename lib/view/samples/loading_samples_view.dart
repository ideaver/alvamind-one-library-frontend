import 'package:flutter/material.dart';
import 'package:laundry_net/view/samples/sample_wrapper.dart';
import 'package:laundry_net/widget/atom/app_progress_indicator.dart';

class LoadingSamplesView extends StatefulWidget {
  const LoadingSamplesView({Key? key}) : super(key: key);

  static const routeName = '/loading-samples';

  @override
  State<LoadingSamplesView> createState() => _LoadingSamplesViewState();
}

class _LoadingSamplesViewState extends State<LoadingSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Loading Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            loadingWithText(),
            loadingWidgetOnly(),
          ],
        ),
      ),
    );
  }

  Widget loadingWithText() {
    return const SampleWrapper(
      title: 'Loading With Text',
      widget: AppProgressIndicator(),
    );
  }

  Widget loadingWidgetOnly() {
    return const SampleWrapper(
      title: 'Loading Widget only',
      widget: AppProgressIndicator(
        showMessage: false,
      ),
    );
  }
}
