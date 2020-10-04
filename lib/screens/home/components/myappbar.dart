

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uianime/configs/constants.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/filter.svg",
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            tooltip: 'Filter',
            onPressed: () {},
          ),
          Text(
            "BROWSE ANIME",
            style: kTitleTextStyle,
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/loupe.svg",
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            tooltip: 'Filter',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
