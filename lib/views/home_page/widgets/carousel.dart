import 'package:firstui/models/operation_card.dart';
import 'package:flutter/material.dart';
import 'package:light_carousel/light_carousel.dart';

final List<OperationCard> _allCards = [
  OperationCard(text: 'Aidez Ghita pour son opération', image: 'images/1.jpg'),
  OperationCard(text: 'ALI Ghita pour son opération', image: 'images/2.jpg'),
  OperationCard(text: 'AMED Ghita pour son opération', image: 'images/3.jpg'),
  OperationCard(
      text: 'YASMINE Ghita pour son opération', image: 'images/4.jpg'),
];

class mycarousel extends StatelessWidget {
  const mycarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        width: _width * .9,
        height: _height * .25,
        child: Container(
          width: _width * .8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.green,
          ),
          child: PageView.builder(
              itemCount: _allCards.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(_allCards[index].image),
                            fit: BoxFit.cover)),
                    child: Center(
                        child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: _width,
                            height: _height * .25,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Colors.black,
                              // Colors.black,
                            ])),
                          ),
                        )
                      ],
                    )));
              }),
        ),
      ),
    );
    return SizedBox(
      width: _width,
      height: 190,
      child: FractionallySizedBox(
        widthFactor: .9,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: PageView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Center(child: Text('HI')),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
