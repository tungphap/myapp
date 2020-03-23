import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(LayoutExample1());
}

final double width = MediaQueryData.fromWindow(window).size.width;
final double height = MediaQueryData.fromWindow(window).size.height;

class LayoutExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget contentLeft = Container(
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textContent('Straberry Pavlova', 20, Colors.black),
              textContent(
                  'The dessert is believed to have been created in honour of the dancer either during or after one of her tours to Australia and New Zealand in the 1920s.[2] The nationality of its creator has '
                  'been a source of argument between the two nations for many years.',
                  15,
                  Colors.green),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    ),
                  ],
                ),
              ),
              Text('147 Reviews')
            ],
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                itemBtn(Icons.smartphone, 'PREP', '25 min'),
                itemBtn(Icons.timer, 'COOK', '1 hr'),
                itemBtn(Icons.local_dining, 'FEEDS', '4-6'),
              ],
            ),
          )
        ],
      ),
    );

    return MaterialApp(
        title: 'Layout Example 1',
        home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text('Layout Example 1'),
                ],
              )),
          body: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/pavlova.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                contentLeft,
              ],
            ),
          ),
        ));
  }
}

Container textContent(String text, double size, Color color) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Text(
      text,
      style: TextStyle(fontSize: size, color: color),
    ),
  );
}

Column itemBtn(IconData icon, String type, String time) {
  return Column(
    children: <Widget>[
      Icon(icon),
      Text(type),
      Text(time),
    ],
  );
}
