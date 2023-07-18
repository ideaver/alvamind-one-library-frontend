import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../model/table_model.dart';
import '../../widget/molecule/app_Checkbox.dart';
import '../../widget/molecule/app_table.dart';
import 'sample_wrapper.dart';

class TableOrganismSamplesView extends StatefulWidget {
  const TableOrganismSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-table-organism-samples';

  @override
  State<TableOrganismSamplesView> createState() => _TableOrganismSamplesViewState();
}

class _TableOrganismSamplesViewState extends State<TableOrganismSamplesView> {
  List<TableModel> headerData = [
    TableModel(
      expanded: false,
      child: AppCheckbox(
        value: true,
        fillColor: AppColors.blackLv1,
        onChanged: (val) {},
      ),
    ),
    TableModel(
      data: 'Tanggal',
      flex: 7,
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      flex: 8,
      data: 'Akun Debet',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      flex: 8,
      data: 'Akun Kredit',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      flex: 8,
      data: 'Nominal Debit',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      flex: 8,
      data: 'Nominal Kredit',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      flex: 8,
      data: 'Saldo',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      flex: 8,
      data: 'Deskripsi',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      expanded: false,
      data: 'ID Transaksi',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      expanded: false,
      data: 'Status',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
  ];

  List<List<TableModel>> data = [
    ...List.generate(
      7,
      (index) => [
        TableModel(
          expanded: false,
          child: AppCheckbox(
            value: false,
            fillColor: AppColors.blackLv1,
            onChanged: (val) {},
          ),
        ),
        TableModel(data: 'Data $index', flex: 18),
        TableModel(data: 'Data $index', flex: 18),
        TableModel(data: 'Data $index', flex: 18),
        TableModel(data: 'Data $index', flex: 19),
        TableModel(data: 'Data $index', flex: 18),
        TableModel(data: 'Data $index', flex: 16),
        TableModel(data: 'Data $index', flex: 15),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table Organism Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultTable(),
          ],
        ),
      ),
    );
  }

  Widget defaultTable() {
    return SampleWrapper(
      title: 'Default Table',
      widget: AppTable(
        headerData: headerData,
        data: data,
      ),
    );
  }
}
