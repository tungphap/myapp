import 'package:flutter/material.dart';

Drawer drawerMenu() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
            child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("images/meo.jpg"),
                radius: 55,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Phan Thanh Tung",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "0835000656",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  Text(
                    "tungphapphap@gmail.com",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  ListTile(
                    title: Text('1625 Main Street',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text('My City, CA 99984'),
                    leading: Icon(
                      Icons.restaurant_menu,
                      color: Colors.blue[500],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ))
      ],
    ),
  );
}
