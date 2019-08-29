import 'package:flutter/material.dart';

class SteggerAnimation extends StatelessWidget {
  final AnimationController controller;

  SteggerAnimation({this.controller})
      : buttonSqueeze = new Tween(
          begin: 320.0,
          end: 60.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.0,
              0.4,
              curve: Curves.bounceOut,
            ),
          ),
        ),
        buttonZoomOut = new Tween(begin: 60.0, end: 1000.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.8,
              1,
              curve: Curves.bounceOut,
            ),
          ),
        );

  final Animation<double> buttonSqueeze;
  final Animation<double> buttonZoomOut;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 70,
      ),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: buttonZoomOut.value <= 60
            ? Container(
                width: buttonSqueeze.value,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(4, 211, 97, 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: _buildInside(context),
              )
            : Container(
                width: buttonZoomOut.value,
                height: buttonZoomOut.value,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(4, 211, 97, 1.0),
                ),
              ),
      ),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueeze.value > 160) {
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
