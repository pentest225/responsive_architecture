// import 'dart:js';

import 'package:flutter/material.dart';
import '../ui/size_innformation.dart';
import '../utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInforamation sizingInforamation) buider;
  const BaseWidget({Key key, this.buider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, contrainte) {
      var sizingInformation = SizingInforamation(
        orientation: mediaQuery.orientation,
        deviceScreenType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(contrainte.maxWidth,contrainte.maxHeight)
      );
      return buider(context, sizingInformation);
    });
  }
}
