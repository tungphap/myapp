import 'package:flutter/material.dart';

void main() {
  return (runApp(GridViewExample()));
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.

    return MaterialApp(
      title: 'GridView Example',
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('GridView'),
          ),
          body: Container(
            child: GridView.extent(
              maxCrossAxisExtent: 150,
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              children: <Widget>[
                Image.asset(
                  'images/image.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/image.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/image.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/image.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/image.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/image.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/image.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          )),
    );
  }
}
