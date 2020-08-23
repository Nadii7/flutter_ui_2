import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key key,
    @required this.txt,
    @required this.discreption,
    @required this.price,
    @required this.img,
    @required this.color, 
    this.press,
  }) : super(key: key);
  final String txt;
  final String discreption;
  final String price;
  final String img;
  final Color color;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 16.0),
        height: 170,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Text(
                    txt,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    discreption,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    ("${(price)}\$"),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(img),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
