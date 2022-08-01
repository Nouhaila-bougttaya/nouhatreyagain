import 'dart:developer';

import 'package:firstui/models/operation_card.dart';
import 'package:firstui/views/home_page/widgets/dots.dart';
import 'package:flutter/material.dart';
import 'package:light_carousel/light_carousel.dart';

final List<OperationCard> _allCards = [
  OperationCard(text: 'Aidez Ghita pour son opération', image: 'images/1.jpg'),
  OperationCard(text: 'ALI Ghita pour son opération', image: 'images/2.jpg'),
  OperationCard(text: 'AMED Ghita pour son opération', image: 'images/3.jpg'),
  OperationCard(
      text: 'YASMINE Ghita pour son opération', image: 'images/4.jpg'),
];

class mycarousel extends StatefulWidget {
  const mycarousel({Key? key}) : super(key: key);

  @override
  State<mycarousel> createState() => _mycarouselState();
}

class _mycarouselState extends State<mycarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    final ListDots = [
      DotWidget(
        color: Colors.blue,
      ),
      DotWidget(
        color: Colors.white,
      ),
      DotWidget(
        color: Colors.white,
      ),
      DotWidget(
        color: Colors.white,
      ),
    ];

    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        width: _width * .9,
        height: _height * .26,
        child: Container(
          width: _width * .8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              PageView.builder(
                  itemCount: _allCards.length,
                  onPageChanged: (c) {
                    setState(() {
                      currentIndex = c;
                    });
                  },
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(_allCards[index].image),
                              fit: BoxFit.cover,
                            )),
                        child: Center(
                            child: Stack(
                          children: [
                            Positioned(
                                bottom: 35,
                                left: 15,
                                child: Text(
                                  _allCards[index].text,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                )),
                          ],
                        )));
                  }),
              Positioned(
                  bottom: 12,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SizedBox(
                      width: 120,
                      height: 80,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return DotWidget(
                              color: currentIndex == index
                                  ? Colors.blue
                                  : Colors.white);
                        },
                        itemCount: _allCards.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
