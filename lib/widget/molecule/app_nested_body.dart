import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class AppNestedScrollView extends StatefulWidget {
  final Widget body;
  final Widget? titleFlexible;
  final Widget? background;
  final EdgeInsets? titlePadding;
  final double? expandedTitleScale;
  final double? expandedHeight;
  final double? collapseHeight;
  final double? elevation;
  final bool? pinned;
  final bool? centerTitle;
  final EdgeInsets? padding;
  final Widget? title;
  final ScrollPhysics? physics;
  final ScrollController? controller;
  final int? lengthTab;

  const AppNestedScrollView({
    super.key,
    required this.body,
    this.titleFlexible,
    this.background,
    this.titlePadding,
    this.expandedTitleScale,
    this.collapseHeight,
    this.elevation,
    this.expandedHeight,
    this.pinned,
    this.padding,
    this.title,
    this.centerTitle,
    this.physics,
    this.controller,
    this.lengthTab,
  });

  @override
  State<AppNestedScrollView> createState() => _AppNestedScrollViewState();
}

class _AppNestedScrollViewState extends State<AppNestedScrollView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: widget.lengthTab ?? 0,
      child: NestedScrollView(
        controller: widget.controller,
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            sliverAppBarWidget()
          ];
        },
        body: SingleChildScrollView(
          physics: widget.physics ?? BouncingScrollPhysics(),
          padding: widget.padding ??
              EdgeInsets.only(
                top: AppSizes.padding,
                right: AppSizes.padding,
                left: AppSizes.padding,
              ),
          child: widget.body,
        ),
      ),
    );
  }

  Widget sliverAppBarWidget() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: widget.pinned ?? true,
      expandedHeight: widget.expandedHeight ?? null,
      collapsedHeight: widget.collapseHeight ?? null,
      elevation: widget.elevation ?? 0.5,
      centerTitle: widget.centerTitle ?? false,
      title: widget.title ?? SizedBox.shrink(),
      flexibleSpace: FlexibleSpaceBar(
        title: widget.titleFlexible ?? const SizedBox.shrink(),
        background: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.background ?? const SizedBox.shrink(),
          ],
        ),
        expandedTitleScale: 1,
        titlePadding: widget.titlePadding ?? EdgeInsets.all(AppSizes.padding),
      ),
    );
  }
}
