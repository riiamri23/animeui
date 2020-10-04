import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uianime/configs/constants.dart';
import 'package:uianime/screens/widgets/tabitem.dart';
import 'package:uianime/screens/widgets/tabitem2.dart';

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
            colors: [kBackground1Color, kBackground2Color],
          ),
        ),
        child: Column(
          children: [
            // MyAppBar(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/left-arrow.svg",
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TabItem(active: 0, text: "Comedy"),
                        TabItem(active: 1, text: "Romance"),
                        TabItem(active: 0, text: "Action"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 100,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 50,
                        height: MediaQuery.of(context).size.height - 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 200,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        "assets/images/example2.jpg",
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Shigatsu wa Kimi \nno Uso",
                                            style: kCardTitleTextStyle),
                                        Row(
                                          children: [
                                            Text(
                                              "24 Episodes",
                                              style: kCardDetailTextStyle,
                                            ),
                                            Text(
                                              " . ",
                                              style: kCardDetailTextStyle,
                                            ),
                                            Text(
                                              "920.900 fans",
                                              style: kCardDetailTextStyle,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Score",
                                          style: kScoreTextStyle2,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: kScoreColor,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                topLeft: Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Text(
                                            "8.09",
                                            style: kScoreTextStyle3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TabItem2(active: 1, text: "Overview"),
                                    TabItem2(active: 0, text: "Review"),
                                    TabItem2(
                                        active: 0, text: "List of Episode"),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Text(
                                  "Music accompanies the path of the human metronome, the prodigious pianist Kousei Arima. But after the passing of his mother, Saki Airma. Kousai falls into a downward spiral.",
                                  style: kCardDescpTextStyle,
                                ),
                              ),
                              SizedBox(height: 15,),
                              new OutlineButton(
                                  child: new Text("Add to My Collections", style: kButtonTextStyle,),
                                  onPressed: null,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "assets/images/example.jpg",
                              width: 280,
                              height: 280,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
