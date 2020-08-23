import 'package:flutter/material.dart';
import 'package:ui_2/screens/info_screen/components/body.dart';

class InfoScreen extends StatelessWidget {
  final String txt, description, price, img;
  final Color color;
// Thats means we have to  pass it
  const InfoScreen(
      {Key key,
      @required this.img,
      @required this.txt,
      @required this.description,
      @required this.price,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        txt: this.txt,
        description: this.description,
        price: this.price,
        img: this.img,
        color: this.color,
      ),
    );
  }
}
