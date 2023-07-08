import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/molecule/app_button.dart';
import 'package:alvamind_library/widget/molecule/app_dialog.dart';
import 'package:flutter/material.dart';

class DialogSamplesView extends StatefulWidget {
  const DialogSamplesView({Key? key}) : super(key: key);

  static const routeName = '/molecule-dialog-samples';

  @override
  State<DialogSamplesView> createState() => _DialogSamplesViewState();
}

class _DialogSamplesViewState extends State<DialogSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dialogProgress(),
            errorDialog(),
            customDialog(),
          ],
        ),
      ),
    );
  }

  Widget dialogProgress() {
    return SampleWrapper(
      title: 'Dialog Progress',
      widget: AppButton(
        onTap: () {
          final navigator = Navigator.of(context);
          AppDialog.showDialogProgress(navigator);
        },
        text: 'AppDialog.showDialogProgress(navigator)',
      ),
    );
  }

  Widget errorDialog() {
    return SampleWrapper(
      title: 'Error Dialog',
      widget: AppButton(
        onTap: () {
          final navigator = Navigator.of(context);
          AppDialog.showErrorDialog(navigator, error: 'someError()');
        },
        text: 'AppDialog.showErrorDialog(navigator)',
      ),
    );
  }

  Widget customDialog() {
    return SampleWrapper(
      title: 'Custom Dialog',
      widget: AppButton(
        onTap: () {
          final navigator = Navigator.of(context);
          AppDialog.show(
            navigator,
            title: 'Dialog Title',
            text: 'Dialog Text',
            leftButtonText: 'Left Button',
            rightButtonText: 'Right Button',
          );
        },
        text: 'AppDialog.show(navigator)',
      ),
    );
  }
}
