import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subTitle: "Terminar curso de flutter",
          image: AssetImage("assets/perfil.jpg"),
          margin: listSlidePosition.value * 0,
        ),
        ListData(
          title: "Trabalhar",
          subTitle: "Trabalhar com flutter",
          image: AssetImage("assets/perfil.jpg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Ir na faculdade",
          subTitle: "Ir para a faculdade estudar flutter",
          image: AssetImage("assets/perfil.jpg"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Trabalhar Multware",
          subTitle: "Trabalhar como suporte TopSapp",
          image: AssetImage("assets/perfil.jpg"),
          margin: listSlidePosition.value * 3,
        ),
      ],
    );
  }
}
