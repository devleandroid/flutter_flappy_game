import 'package:flutter/material.dart';

class MyBarrier extends StatelessWidget {
  final barrierWidth;
  final barrierHeight;
  final barrierX;
  final bool isThisBottomBarrier;

  MyBarrier(
      {this.barrierHeight,
      this.barrierWidth,
      this.barrierX,
      required this.isThisBottomBarrier});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment((4 * barrierX + barrierWidth) / (4 - barrierWidth),
          (isThisBottomBarrier ? 1 : -1)),
      child: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width * barrierWidth / 2.5,
        height: MediaQuery.of(context).size.height * barrierHeight / 2.5,
      ),
    );
  }
}
