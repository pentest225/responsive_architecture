import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/size_innformation.dart';
class BaseWidget  extends StatelessWidget {
  final Widget Function(BuildContext context,SizingInforamation sizingInforamation) buider;
  const BaseWidget ({Key key ,this.buider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizingInformation = SizingInforamation();
    return buider(context,sizingInformation);
  }
}