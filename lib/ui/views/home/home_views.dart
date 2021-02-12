// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';

import 'package:responsive_architecture/ui/views/home/Home_mobil_portrait.dart';
import 'package:responsive_architecture/ui/views/home/home_mobile_landscape.dart';

import 'home_view_tablet.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilPortrait(),
        landscape: HomeMobilLandscape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}
