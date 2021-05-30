import 'package:family_restaurant/components/navbar.dart';
import 'package:family_restaurant/pages/staffPages/StaffPage.dart';
import 'package:family_restaurant/pages/staffPages/admin/admin_login.dart';
import 'package:family_restaurant/pages/staffPages/admin/admin_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'FoodsLocalPage.dart';
import 'booking.dart';
import 'menu.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/booking": (context) => BookingPage(),
        "/menuPage": (context) => MenuFood(),
        "/menuLocally": (context) => FoodsLocalPage(),
        "/staff": (context) => StaffPage(),
        "/adminLogin": (context) => AdminLogin(),
        "/adminPage": (context) => AdminPage(),
        "/infoPage": (context) => InfoPage()
      },
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("Info"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 20),
            child: Image(
              image: AssetImage("assets/info.jpg"),fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
