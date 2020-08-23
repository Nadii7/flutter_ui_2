import 'package:flutter/material.dart';


class StackBackGround extends StatelessWidget {
  const StackBackGround({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: double.infinity,
      child: Container(
        width: 220,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}

