import 'package:flutter/material.dart';
import 'package:ui_2/screens/home_screen/components/category_list.dart';
import 'package:ui_2/screens/home_screen/components/item_list.dart';
import 'package:ui_2/screens/home_screen/components/search_bar.dart';
import 'package:ui_2/screens/home_screen/components/stack_bg.dart';

class Body extends StatefulWidget {
  
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var categoryList = [
    {
      "icon": "assets/icons/icons8-citrus-48.png",
      "txt": "Citrus",
      "image": "assets/cards/icons8-citrus-100.png",
      "discreption": "For Ent3ash ktar",
      "price": "10",
    },
    {
      "icon": "assets/icons/icons8-grape-48.png",
      "txt": "Grape",
      "image": "assets/cards/icons8-grape-100.png",
      "discreption": "For Good Blood",
      "price": "15",
    },
    {
      "icon": "assets/icons/icons8-kiwi-fruit-48.png",
      "txt": "Kiwi",
      "image": "assets/cards/icons8-kiwi-fruit-100.png",
      "discreption": "Kiwi Mb7bhosh",
      "price": "15",
    },
    {
      "icon": "assets/icons/icons8-peach-48.png",
      "txt": "Peach",
      "image": "assets/cards/icons8-peach-100.png",
      "discreption": "bitch zy so7aby",
      "price": "12",
    },
    {
      "icon": "assets/icons/icons8-raspberry-48.png",
      "txt": "Raspberry",
      "image": "assets/cards/icons8-raspberry-100.png",
      "discreption": "Like U",
      "price": "17",
    },
    {
      "icon": "assets/icons/icons8-sweet-banana-48.png",
      "txt": "Banana",
      "image": "assets/cards/icons8-sweet-banana-100.png",
      "discreption": "Fav Fruit",
      "price": "15",
    },
    {
      "icon": "assets/icons/icons8-watermelon-48.png",
      "txt": "Watermelon",
      "image": "assets/cards/icons8-watermelon-100.png",
      "discreption": "Good For Summer",
      "price": "17",
    },
  ];
  var cardColor = [
    {
      "color": Colors.amber[200],
    },
    {
      "color": Colors.deepPurple[300],
    },
    {"color": Colors.green[300]},
    {
      "color": Colors.orange[200],
    },
    {
      "color": Colors.red[200],
    },
    {
      "color": Colors.blue[300],
    },
    {
      "color": Colors.pink[400],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 16.0),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pinkAccent[100],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SearchBar(),
                  SizedBox(
                    height: 15,
                  ),
                  CategoryList(categoryList: categoryList,cardColor: cardColor,),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 14,
            child: new Stack(
              children: <Widget>[
                StackBackGround(),
                ListItems(cardColor: cardColor, categoryList: categoryList),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
