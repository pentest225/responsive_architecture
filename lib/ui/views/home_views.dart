// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      buider: (context, sizingInformation) {
        return Scaffold(body: Center(child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 150,
              child: BaseWidget(buider:(context,sz)=> Text(sz.toString()),),
            ),
            Text(sizingInformation.toString()),
          ],
        ) ,),);
      },
    );
  }
}
