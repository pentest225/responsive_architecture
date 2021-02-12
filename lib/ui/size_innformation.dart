import 'dart:html';

import 'package:responsive_architecture/enums/device_sreen_type.dart';
import 'package:flutter/material.dart';

class SizingInforamation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInforamation(
      {this.deviceScreenType,
      this.orientation,
      this.screenSize,
      this.localWidgetSize});
  @override
  String toString() {
    return 'Orientation :$orientation DeviceType:$deviceScreenType Screen Size:$screenSize localWidgetSized $localWidgetSize';
  }
}
