import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({
    Key key,
    @required this.image,
    @required this.txt, this.press,
  }) : super(key: key);
  final String image;
  final String txt;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 88,
        height: 88,
        margin: EdgeInsets.only(right: 8.0),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.pink[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(image),
            Text(
              txt,
              style:
                  TextStyle(fontSize: 10, color: Colors.pink[200], height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
