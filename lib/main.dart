import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/views/home_views.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder:(context)=> MyApp(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Responcive Architecture ',
      theme: ThemeData(
         primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomeView(),
    );
  }
}

