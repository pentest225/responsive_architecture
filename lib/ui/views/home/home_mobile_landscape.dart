import 'package:flutter/material.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer.dart';


class HomeMobilLandscape extends StatelessWidget {
  const HomeMobilLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        AppDrawer()
      ],),
      // child: child,
    );
  }
}