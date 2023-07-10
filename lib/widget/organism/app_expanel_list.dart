import 'package:alvamind_library/widget/atom/app_divider.dart';
import 'package:flutter/material.dart';

class AppExpansionListTile extends StatefulWidget {
  final String title;
  final IconData? icon;
  final Color? backgroundColor;
  final bool expand;
  final List<Widget> children;

  const AppExpansionListTile({
    Key? key,
    required this.children,
    required this.title,
    this.icon,
    this.backgroundColor,
    this.expand = false,
  }) : super(key: key);

  @override
  State<AppExpansionListTile> createState() => _AppExpansionListTileState();
}

class _AppExpansionListTileState extends State<AppExpansionListTile> {
  bool isExpanded = true;

  @override
  void initState() {
    isExpanded = widget.expand;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isExpanded ? null : 54,
      duration: const Duration(milliseconds: 300),
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(1, 1),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    isExpanded = !isExpanded;
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: widget.backgroundColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            widget.icon != null
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                      right: 9,
                                    ),
                                    child: Icon(
                                      widget.icon!,
                                      color: Colors.grey,
                                      size: 12,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            Text(
                              widget.title,
                              style: TextStyle(
                                fontSize: 18,
                                color: widget.backgroundColor == Colors.black ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          isExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                          color: Colors.blue,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                AppDivider(
                  thickness: 0.5,
                  padding: EdgeInsets.symmetric(horizontal: 18),
                ),
                ...widget.children,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
