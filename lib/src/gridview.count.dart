import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'GridView Count',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('GridView Count'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(100, (index) {
            return Container(
              decoration: BoxDecoration(image: new DecorationImage(image: new AssetImage('images/image.jpg'), fit: BoxFit.cover)),
              child: Text('Item $index'),
            );
          }),
        ),
      ),
    );
  }
}
