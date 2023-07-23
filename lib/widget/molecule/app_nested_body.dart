import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class AppNestedScrollView extends StatelessWidget {
  final Widget body;
  final Widget? title;
  final Widget? background;
  final EdgeInsets? titlePadding;
  final double? expandedTitleScale;
  final double? expandedHeight;
  final double? collapseHeight;
  final double? elevation;
  final bool? pinned;
  final EdgeInsets? padding;

  const AppNestedScrollView({
    super.key,
    required this.body,
    this.title,
    this.background,
    this.titlePadding,
    this.expandedTitleScale,
    this.collapseHeight,
    this.elevation,
    this.expandedHeight,
    this.pinned,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: pinned ?? true,
            expandedHeight: expandedHeight ?? 50,
            collapsedHeight: collapseHeight ?? 70,
            elevation: elevation ?? 0.5,
            flexibleSpace: FlexibleSpaceBar(
              title: title ?? const SizedBox.shrink(),
              background: background ?? const SizedBox.shrink(),
              expandedTitleScale: 1,
              titlePadding: titlePadding ?? EdgeInsets.all(AppSizes.padding),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: padding ??
            EdgeInsets.only(
              top: AppSizes.padding,
              right: AppSizes.padding,
              left: AppSizes.padding,
            ),
        child: body,
      ),
    );
  }
}
