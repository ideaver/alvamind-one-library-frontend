import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../model/category_menu_model.dart';
import '../../widget/molecule/app_category_menu.dart';
import '../../widget/organism/service_category_menu/service_category_menu.dart';

class ServiceCategorySamplesView extends StatefulWidget {
  const ServiceCategorySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-service-category-samples';

  @override
  State<ServiceCategorySamplesView> createState() => _ServiceCategorySamplesViewState();
}

class _ServiceCategorySamplesViewState extends State<ServiceCategorySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Service Category Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            serviceCategoryMenu(),
          ],
        ),
      ),
    );
  }

  Widget serviceCategoryMenu() {
    return SampleWrapper(title: 'Service Category Menu', widget: ServiceCategory());
  }
}
