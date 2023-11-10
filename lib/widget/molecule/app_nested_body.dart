import '../../app/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class AppNestedScrollView extends StatefulWidget {
  final Widget body;
  final Widget? titleFlexible;
  final Widget? background;
  final Color? backgroundColor;
  final EdgeInsets? titlePadding;
  final double? expandedTitleScale;
  final double? expandedHeight;
  final double? collapseHeight;
  final double? elevation;
  final double? toolbarHeight;
  final bool? pinned;
  final bool? centerTitle;
  final bool isScroll;
  final bool centerBody;
  final bool? floating;
  final bool? snap;
  final PreferredSizeWidget? bottom;
  final EdgeInsets? padding;
  final Widget? title;
  final ScrollPhysics? physics;
  final ScrollController? controller;
  final int? lengthTab;
  final CrossAxisAlignment? bgCrossAxisAlignment;
  final MainAxisAlignment? bgMainAxisAlignment;
  final List<Widget>? moreHeaderSlivers;

  const AppNestedScrollView({
    super.key,
    required this.body,
    this.titleFlexible,
    this.background,
    this.titlePadding,
    this.expandedTitleScale,
    this.collapseHeight,
    this.elevation,
    this.toolbarHeight,
    this.expandedHeight,
    this.pinned,
    this.padding,
    this.title,
    this.centerTitle,
    this.physics = const BouncingScrollPhysics(),
    this.controller,
    this.lengthTab,
    this.bgMainAxisAlignment,
    this.bgCrossAxisAlignment,
    this.moreHeaderSlivers,
    this.isScroll = true,
    this.centerBody = false,
    this.floating,
    this.snap,
    this.bottom,
    this.backgroundColor,
  });

  @override
  State<AppNestedScrollView> createState() => _AppNestedScrollViewState();
}

class _AppNestedScrollViewState extends State<AppNestedScrollView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.lengthTab ?? 0,
      child: NestedScrollView(
        physics: widget.isScroll ? const ClampingScrollPhysics() : const NeverScrollableScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            sliverAppBarWidget(),
            ...widget.moreHeaderSlivers ?? [],
          ];
        },
        body: widget.isScroll
            ? widget.centerBody
                ? Center(child: scrollableBody())
                : scrollableBody()
            : Padding(
                padding: widget.padding ?? EdgeInsets.zero,
                child: widget.centerBody ? Center(child: widget.body) : widget.body,
              ),
      ),
    );
  }

  Widget scrollableBody() {
    return SingleChildScrollView(
      controller: widget.controller,
      physics: widget.physics,
      padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
      child: widget.body,
    );
  }

  Widget sliverAppBarWidget() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: widget.pinned ?? true,
      backgroundColor: widget.backgroundColor,
      floating: widget.floating ?? false,
      excludeHeaderSemantics: true,
      snap: widget.snap ?? false,
      expandedHeight: widget.expandedHeight,
      collapsedHeight: widget.collapseHeight,
      elevation: widget.elevation ?? 0.5,
      centerTitle: widget.centerTitle ?? false,
      title: widget.title ?? const SizedBox.shrink(),
      bottom: widget.bottom,
      toolbarHeight: widget.toolbarHeight ?? kToolbarHeight,
      flexibleSpace: FlexibleSpaceBar(
        title: widget.titleFlexible ?? const SizedBox.shrink(),
        background: Column(
          crossAxisAlignment: widget.bgCrossAxisAlignment ?? CrossAxisAlignment.center,
          mainAxisAlignment: widget.bgMainAxisAlignment ?? MainAxisAlignment.center,
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
