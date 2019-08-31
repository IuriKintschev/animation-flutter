import 'package:flutter/material.dart';

class ListHome extends StatefulWidget {
  @override
  _ListHomeState createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {
  List _lista = [
    "Estudar",
    "Trabalhar",
    "Faculdade",
  ];

  int _count = 0;

  void _back() {
    setState(() {
      _count--;
    });
  }

  void _next() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          color: Colors.white,
          disabledColor: Colors.white60,
          onPressed: _count > 0
              ? () {
                  _back();
                }
              : null,
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        Text(
          "${_lista[_count]}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          color: Colors.white,
          disabledColor: Colors.white60,
          onPressed: _count < 2
              ? () {
                  _next();
                }
              : null,
          icon: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ],
    );
  }
}
