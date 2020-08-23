import 'package:flutter/material.dart';
import 'package:ui_2/screens/home_screen/components/category_card.dart';
import 'package:ui_2/screens/info_screen/info_screen.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
    @required this.categoryList,
    @required this.cardColor,
  }) : super(key: key);

  final List<Map<String, String>> categoryList;
  final List<Map<String, Object>> cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(8.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: categoryList.length,
          itemBuilder: (context, index) => CategoryCards(
                image: categoryList[index]["icon"],
                txt: categoryList[index]["txt"],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoScreen(
                          txt: categoryList[index]["txt"],
                          description: categoryList[index]["discreption"],
                          price: categoryList[index]["price"],
                          img: categoryList[index]["image"],
                          color: cardColor[index]["color"],
                        ),
                      ));
                },
              )),
    );
  }
}
