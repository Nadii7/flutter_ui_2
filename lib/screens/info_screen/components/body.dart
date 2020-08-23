import 'package:flutter/material.dart';
import 'package:ui_2/screens/info_screen/components/default_but.dart';
import 'package:ui_2/screens/info_screen/components/back_but.dart';
import 'package:ui_2/screens/info_screen/components/order.dart';

class Body extends StatefulWidget {
  final String txt, description, price, img;
  final Color color;
  const Body(
      {Key key,
      @required this.img,
      this.txt,
      this.description,
      this.price,
      this.color})
      : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 16.0),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    widget.img,
                  ),
                ),
                BackBut(color: widget.color,),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.txt,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OrderDetails(color: widget.color,price: widget.price,),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "About Products",
                    style: TextStyle(
                      fontSize: 30,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Almost every designer awaits their turn and chance work\nown the next big food product. this was mine so cherished\nthe opportunity to make my mark expanding.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      height: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: DefaultButton(color: widget.color,),
            ),
          ),
        ],
      ),
    );
  }
}
