import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/modal/modal_popup.dart';

import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_button.dart';
import '../../widget/organism/modal/modal.dart';

class ModalSamplesView extends StatefulWidget {
  const ModalSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-modal-samples';

  @override
  State<ModalSamplesView> createState() => _ModalSamplesViewState();
}

class _ModalSamplesViewState extends State<ModalSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Modal Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
