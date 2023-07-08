import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/atom/app_image.dart';
import 'package:flutter/material.dart';

class IllustrationStateSamplesView extends StatefulWidget {
  const IllustrationStateSamplesView({Key? key}) : super(key: key);

  static const routeName = '/atom-illustration-state-samples';

  @override
  State<IllustrationStateSamplesView> createState() =>
      _IllustrationStateSamplesViewState();
}

class _IllustrationStateSamplesViewState
    extends State<IllustrationStateSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Illustration State Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            successIllustration(),
            failedIllustration(),
            warningIllustration(),
            infoIllustration(),
          ],
        ),
      ),
    );
  }

  Widget successIllustration() {
    return const SampleWrapper(
      title: 'Success Illutration Image',
      widget: AppImage(
        image: AppAssets.success,
        imgProvider: ImgProvider.assetImage,
        width: 100,
      ),
    );
  }

  Widget failedIllustration() {
    return const SampleWrapper(
      title: 'Failed Illutration Image',
      widget: AppImage(
        image: AppAssets.failed,
        imgProvider: ImgProvider.assetImage,
        width: 100,
      ),
    );
  }

  Widget warningIllustration() {
    return const SampleWrapper(
      title: 'Warning Illutration Image',
      widget: AppImage(
        image: AppAssets.warning,
        imgProvider: ImgProvider.assetImage,
        width: 100,
      ),
    );
  }

  Widget infoIllustration() {
    return const SampleWrapper(
      title: 'info Illutration Image',
      widget: AppImage(
        image: AppAssets.info,
        imgProvider: ImgProvider.assetImage,
        width: 100,
      ),
    );
  }
}
