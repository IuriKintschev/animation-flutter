import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height / 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backperfil.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
