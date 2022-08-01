import 'package:flutter/material.dart';

class AppBarContent extends StatelessWidget {
  AppBarContent({Key? key}) : super(key: key);
  final Color bleu = Colors.blue;
  final Color graybleu = Colors.blueGrey.shade100;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.logo_dev,
                size: 60,
              ),
              const Text(
                'Karam',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const Spacer(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17.0),
                ),
                color: graybleu,
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: bleu,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17.0),
                ),
                color: graybleu,
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: bleu,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17.0),
                ),
                color: graybleu,
                child: IconButton(
                  icon: Icon(
                    Icons.bookmark,
                    color: bleu,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
