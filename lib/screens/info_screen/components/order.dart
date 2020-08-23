import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({
    Key key,
    @required this.color,
    @required this.price,
  }) : super(key: key);
  final String price;
  final Color color;

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int x = 1;
  // int value = int.parse(price) * x ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ("${(int.parse(widget.price)*x)}\$"),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(4.0),
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (x > 1) {
                      x = x - 1;
                    }
                  });
                },
                icon: Icon(Icons.remove),
                color: Colors.white,
              ),
              Spacer(),
              Text(
                "$x",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (x < 10) {
                      x = x + 1;
                    }
                  });
                },
                icon: Icon(Icons.add),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
