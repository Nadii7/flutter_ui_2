import 'package:flutter/material.dart';
import 'package:ui_2/screens/home_screen/components/card_item.dart';
import 'package:ui_2/screens/info_screen/info_screen.dart';

class ListItems extends StatelessWidget {
  const ListItems({
    Key key,
    @required this.cardColor,
    @required this.categoryList,
  }) : super(key: key);

  final List<Map<String, Color>> cardColor;
  final List<Map<String, String>> categoryList;

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: Positioned(
        child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          shrinkWrap: true,
          itemCount: cardColor.length,
          itemBuilder: (context, index) => CardItem(
            img: categoryList[index]["image"],
            txt: categoryList[index]["txt"],
            color: cardColor[index]["color"],
            discreption: categoryList[index]["discreption"],
            price: categoryList[index]["price"],
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
          ),
        ),
      ),
    );
  }
}
