import 'package:flutter/material.dart';

class SteggerAnimation extends StatelessWidget {
  final AnimationController controller;

  SteggerAnimation({this.controller})
      : buttonSqueeze = CurvedAnimation(
          parent: controller,
          curve: Curves.bounceOut,
        );
  // : buttonSqueeze = new Tween(
  //     begin: 320.0,
  //     end: 60.0,
  //   ).animate(
  //     CurvedAnimation(
  //       parent: controller,
  //       curve: Interval(0.0, 0.150),
  //     ),
  //   );
  final elasticAnimation = Tween(
    begin: 320.0,
    end: 60.0,
  );

  final Animation<double> buttonSqueeze;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 70,
      ),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: Container(
          width: elasticAnimation.evaluate(buttonSqueeze),
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(4, 211, 97, 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: _buildInside(context),
        ),
      ),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (elasticAnimation.evaluate(buttonSqueeze) > 160) {
      return Text(
        "Sing in",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
