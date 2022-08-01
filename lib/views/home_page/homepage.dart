import 'package:firstui/views/home_page/widgets/appbar.dart';
import 'package:firstui/views/home_page/widgets/carousel.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          child: AppBarContent(),
        ),
      ),
      body: Column(
        children: [mycarousel()],
      ),
    );
  }
}
/*Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar:
          AppBar(backgroundColor: Colors.transparent, title: Text("category")),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 7.0,
          mainAxisSpacing: 6.0,
        ),
        itemBuilder: (context, index) {
          return categoryCard(
            ico: Icon(Icons.category),
            name: "category",
          );
        },
      ),
    );*/
 