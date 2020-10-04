
import 'package:flutter/material.dart';
import 'package:uianime/configs/constants.dart';



class TabItem2 extends StatelessWidget {
  const TabItem2({
    Key key,
    this.active,
    this.text,
  }) : super(key: key);
  final active;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        border: active == 1
            ? Border(
                bottom: BorderSide(
                  width: 2,
                  color: kBorderColor,
                ),
              )
            : null,
      ),
      child: Text(
        text,
        style: active == 1 ? kTabTextStyle2 : kTabTextStyle,
      ),
    );
  }
}
