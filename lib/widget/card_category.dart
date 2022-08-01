import 'package:flutter/material.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({Key? key, required this.ico, required this.name})
      : super(key: key);
  final Icon ico;
  final String name;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {


      },
      child: Card(
        color: Colors.white,
        borderOnForeground: true,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ico, Text("${name}")]),
      ),
    );
  }
}
