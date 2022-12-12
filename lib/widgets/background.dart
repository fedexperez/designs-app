import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff2E305F), Color(0xff202333)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8]));

    return Stack(
      children: [
        Container(decoration: boxDecoration),
        const Positioned(top: -100, left: -30, child: _PinkBox()),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
          width: 380,
          height: 380,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.pink, Color.fromRGBO(241, 142, 172, 1)]),
            borderRadius: BorderRadius.circular(60),
          )),
    );
  }
}
