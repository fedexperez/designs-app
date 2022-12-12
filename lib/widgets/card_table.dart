import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            size: size,
            iconData: Icons.dashboard_sharp,
            title: 'General',
            bgColor: Colors.blue,
          ),
          _SingleCard(
              size: size,
              iconData: Icons.train_sharp,
              title: 'Transport',
              bgColor: Colors.purple)
        ]),
        TableRow(children: [
          _SingleCard(
            size: size,
            iconData: Icons.shopping_bag,
            title: 'Shopping',
            bgColor: Colors.pink.shade400,
          ),
          _SingleCard(
              size: size,
              iconData: Icons.text_snippet_rounded,
              title: 'Bill',
              bgColor: Colors.orange)
        ]),
        TableRow(children: [
          _SingleCard(
            size: size,
            iconData: Icons.movie,
            title: 'Entertainment',
            bgColor: const Color.fromARGB(255, 118, 137, 241),
          ),
          _SingleCard(
              size: size,
              iconData: Icons.store,
              title: 'Grocery',
              bgColor: Colors.green)
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.size,
    required this.iconData,
    required this.title,
    required this.bgColor,
  }) : super(key: key);

  final Size size;
  final IconData iconData;
  final String title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return CardBackground(
      size: size,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: bgColor,
              radius: 30,
              child: Icon(
                iconData,
                size: 30,
                color: const Color.fromARGB(228, 255, 255, 255),
              )),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: bgColor, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class CardBackground extends StatelessWidget {
  final Widget child;
  final Size size;

  const CardBackground({super.key, required this.child, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: size.width * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(62, 66, 107, 0.7)),
            child: child,
          ),
        ),
      ),
    );
  }
}
