import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliverObstructionInjector extends SliverOverlapInjector {
  const SliverObstructionInjector({
    Key? key,
    required SliverOverlapAbsorberHandle handle,
    Widget? child,
  })  : assert(handle != null),
        super(
          key: key,
          handle: handle,
          sliver: child,
        );

  @override
  RenderSliverObstructionInjector createRenderObject(BuildContext context) {
    return RenderSliverObstructionInjector(
      handle: handle,
    );
  }
}

class RenderSliverObstructionInjector extends RenderSliverOverlapInjector {
  RenderSliverObstructionInjector({
    required SliverOverlapAbsorberHandle handle,
    RenderSliver? child,
  })  : assert(handle != null),
        _handle = handle,
        super(handle: handle);

  double? _currentLayoutExtent;
  double? _currentMaxExtent;

  SliverOverlapAbsorberHandle get handle => _handle;
  SliverOverlapAbsorberHandle _handle;
  set handle(SliverOverlapAbsorberHandle value) {
    assert(value != null);
    if (handle == value) return;
    if (attached) {
      handle.removeListener(markNeedsLayout);
    }
    _handle = value;
    if (attached) {
      handle.addListener(markNeedsLayout);
      if (handle.layoutExtent != _currentLayoutExtent || handle.scrollExtent != _currentMaxExtent) markNeedsLayout();
    }
  }

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    handle.addListener(markNeedsLayout);
    if (handle.layoutExtent != _currentLayoutExtent || handle.scrollExtent != _currentMaxExtent) markNeedsLayout();
  }

  @override
  void performLayout() {
    _currentLayoutExtent = handle.layoutExtent!;
    _currentMaxExtent = handle.layoutExtent!;
    geometry = SliverGeometry(
      scrollExtent: 0.0,
      paintExtent: _currentLayoutExtent!,
      maxPaintExtent: _currentMaxExtent!,
    );
  }
}
