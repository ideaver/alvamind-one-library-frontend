import 'package:flutter/material.dart';

import '../../widget/molecule/app_table_navigation.dart';
import 'sample_wrapper.dart';

class TableNavigationSamplesView extends StatefulWidget {
  const TableNavigationSamplesView({Key? key}) : super(key: key);

  static const routeName = '/molecule-table-navigation-samples';

  @override
  State<TableNavigationSamplesView> createState() => _TableNavigationSamplesViewState();
}

class _TableNavigationSamplesViewState extends State<TableNavigationSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table Navigation Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultTableNavigation(),
          ],
        ),
      ),
    );
  }

  Widget defaultTableNavigation() {
    return SampleWrapper(
      title: 'Default Table Navigation (Responsive)',
      widget: Center(
        child: AppTableNavigation(
          title: 'Rows per page',
          maxRows: 25,
          maxPageIndex: 10,
          currentPageIndex: 1,
          onSelectedMaxRows: (i) {},
          onTapFirstPage: () {},
          onTapLastPage: () {},
          onTapNextPage: () {},
          onTapPrevPage: () {},
        ),
      ),
    );
  }
}
