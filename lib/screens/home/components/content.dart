import 'package:flutter/material.dart';
import 'package:uianime/configs/constants.dart';
import 'package:uianime/screens/home/components/animecard.dart';
import 'package:uianime/screens/widgets/tabitem.dart';

class Content extends StatelessWidget {
  const Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List<Map<String, dynamic>> mylist = [
    //   {
    //     "imageSrc":"assets/images/konosuba.jpg",
    //   }
    // ];
    return Container(
      padding: EdgeInsets.only(left: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              children: [
                TabItem(
                  active: 1,
                  text: "Series",
                ),
                TabItem(
                  text: "Movies",
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                buildCatagory(nameCatagory: "THIS SEASON"),
                buildListCard(),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                buildCatagory(nameCatagory: "TOP ANIME"),
                buildListCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView buildListCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimeCard(
              imageSrc: "assets/images/konosuba.jpg",
              name: "KonoSuba!",
              score: "8.49",
              status: "Currently Airing",
            ),
            AnimeCard(
              imageSrc: "assets/images/aonoexorciest.jpg",
              name: "Ao no exorciest",
              score: "8.49",
              status: "Completed",
            ),
            AnimeCard(
              imageSrc: "assets/images/konosuba.jpg",
              name: "KonoSuba!",
              score: "8.49",
              status: "Currently Airing",
            ),
            AnimeCard(
              imageSrc: "assets/images/konosuba.jpg",
              name: "KonoSuba!",
              score: "8.49",
              status: "Currently Airing",
            ),
            AnimeCard(
              imageSrc: "assets/images/konosuba.jpg",
              name: "KonoSuba!",
              score: "8.49",
              status: "Currently Airing",
            ),
          ],
        ),
      ),
    );
  }

  Container buildCatagory({nameCatagory}) {
    return Container(
      padding: EdgeInsets.only(right: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nameCatagory,
            style: kCatagoryTextStyle,
          ),
          Text(
            "More",
            style: kMoreTextStyle,
          ),
        ],
      ),
    );
  }
}
