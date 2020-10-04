import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uianime/configs/constants.dart';

import 'content.dart';
import 'myappbar.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [kBackground1Color, kBackground2Color])),
        child: Column(
          children: [
            MyAppBar(),
            Content(),
          ],
        ),
      ),
    );
  }
}
