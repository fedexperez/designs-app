import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/paisaje.jpeg'),
            const Title(),
            const ButtonSection(),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: size.height * 0.04, horizontal: size.width * 0.08),
              child: const Text(
                '''Oeschinen Lake (German: Oeschinensee) is a lake in the Bernese Oberland, Switzerland, 4 kilometres (2.5 mi) east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres (5,177 ft), it has a surface area of 1.1147 square kilometres (0.4304 sq mi). Its maximum depth is 56 metres (184 ft).
      
      The lake was created by a giant landslide and is fed through a series of mountain creeks and drains underground. The water then resurfaces as the Oeschibach. Part of it is captured for electricity production and as water supply for Kandersteg.
      
      In observations from 1931 to 1965, the elevation of the lake surface varied between 1,566.09 metres (5,138.1 ft) and 1,581.9 metres (5,190 ft). The average seasonal variation was 12.2 metres (40 ft) (September/April).
      
      The lake is generally frozen during five months, from December to May. From time to time ice skating is possible on the ice.
      
      Fish in the lake include Arctic char (Seesaibling), lake trout (Kanadische Seeforelle), rainbow trout (Regenbogenforelle). From January to March, ice fishing is popular.
      
      A gondola lift from Kandersteg leads to Oeschinen, 25 minutes by foot from the lake.
      
      Since 2007 the lake is part of the Jungfrau-Aletsch-Bietschhorn UNESCO World Heritage Site.
      
      As of summer 2021, a circumnavigation of Lake Oeschinen is not possible. The reason for this is the danger of an imminent rockfall on the south shore, which is why paths are closed there.''',
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CustomButton(
          title: 'CALL',
          icon: Icons.call,
        ),
        CustomButton(
          title: 'ROUTE',
          icon: Icons.route,
        ),
        CustomButton(
          title: 'SHARE',
          icon: Icons.share,
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(
          title,
          style: TextStyle(color: Colors.blue.shade700),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: size.height * 0.04, horizontal: size.width * 0.08),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}
