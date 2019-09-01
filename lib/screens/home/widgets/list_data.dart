import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subTitle;
  final ImageProvider image;
  final EdgeInsets margin;

  ListData({this.title, this.subTitle, this.image, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
          top: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 10,
              top: 10,
              left: 20,
              right: 30,
            ),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: image,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
