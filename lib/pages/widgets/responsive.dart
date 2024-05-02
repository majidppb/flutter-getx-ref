import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../home/controllers/home_controller.dart';

// Not used
// ResponsiveView using GetX, widget is not const

class ResponsiveView extends GetResponsiveView<HomeController> {
  ResponsiveView({
    super.key,
    required Widget phoneView,
    required Widget desktopView,
    Widget? tabletView,
  })  : _phone = phoneView,
        _desktop = desktopView,
        _tablet = tabletView;

  final Widget _desktop;
  final Widget _phone;
  final Widget? _tablet;

  @override
  Widget builder() {
    if (screen.isPhone) {
      return _phone;
    } else if (screen.isTablet) {
      return _tablet ?? _phone;
    }
    return _desktop;
  }
}

// widget is const

class ResponsiveView2 extends StatelessWidget {
  const ResponsiveView2({
    super.key,
    required Widget phoneView,
    required Widget desktopView,
    Widget? tabletView,
  })  : _phone = phoneView,
        _desktop = desktopView,
        _tablet = tabletView;

  static const _desktopChangePoint = 1200;
  static const _tabletChangePoint = 600;

  final Widget _desktop;
  final Widget _phone;
  final Widget? _tablet;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < _tabletChangePoint) {
      return _phone;
    } else if (width < _desktopChangePoint) {
      return _tablet ?? _phone;
    }
    return _desktop;
  }
}
