import 'package:alvamind_library/model/table_model.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_text_style.dart';

class AppTableRow extends StatefulWidget {
  final String? title;
  final List<TableModel> data;
  final EdgeInsets? padding;

  const AppTableRow({
    Key? key,
    this.title,
    required this.data,
    this.padding,
  }) : super(key: key);

  @override
  State<AppTableRow> createState() => _AppTableRowState();
}

class _AppTableRowState extends State<AppTableRow> {
  ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          widget.title != null
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text(
                    widget.title ?? '',
                    style: AppTextStyle.bold(size: 18),
                  ),
                )
              : const SizedBox.shrink(),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                // width: screenSize.width > 1024 ? screenSize.width : 1024,
                child: widget.data.isNotEmpty
                    ? ListView.builder(
                        controller: scrollController,
                        shrinkWrap: true,
                        itemCount: widget.data.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, i) {
                          return row(i);
                        },
                      )
                    : Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                          color: AppColors.blackLv6,
                        ),
                        child: Center(
                          child: Text(
                            '(Kosong)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget row(int i) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: i.isEven ? AppColors.white : AppColors.blackLv6,
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(widget.data.length, (i) {
            return Expanded(
              flex: widget.data[i].flex,
              child: widget.data[i].child != null
                  ? widget.data[i].child!
                  : Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.data[i].data,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.bold(size: 14),
                      ),
                    ),
            );
          })
        ],
      ),
    );
  }
}
