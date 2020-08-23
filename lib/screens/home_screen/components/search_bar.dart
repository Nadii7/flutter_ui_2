import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 60,
          width: 300,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16.0),
              hintText: 'Search Fruit Name',
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Colors.pinkAccent[100],
                fontSize: 12,
              ),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.pinkAccent[100],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.pink[200],
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
