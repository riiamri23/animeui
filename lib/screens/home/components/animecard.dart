import 'package:flutter/material.dart';
import 'package:uianime/configs/constants.dart';
import 'package:uianime/screens/detail/detail.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({
    Key key,
    this.imageSrc,
    this.name,
    this.score,
    this.status,
  }) : super(key: key);

  final imageSrc;
  final name;
  final score;
  final status;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
          child: Container(
        margin: EdgeInsets.only(top: 20, right: 20, bottom: 30),
        width: MediaQuery.of(context).size.width / 2.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imageSrc,
                width: MediaQuery.of(context).size.width / 2.6,
                height: MediaQuery.of(context).size.width / 2.2,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              name,
              style: kNameTextStyle,
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  "Score",
                  style: kScoreTextStyle,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: kScoreColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                  ),
                  child: Text(score),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              status,
              style: kScoreTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
