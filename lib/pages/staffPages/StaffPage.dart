import 'package:family_restaurant/components/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../FoodsLocalPage.dart';
import '../booking.dart';
import '../menu.dart';
import 'admin/admin_login.dart';
import 'admin/admin_page.dart';

class StaffPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/booking": (context) => BookingPage(),
        "/menuPage": (context) => MenuFood(),
        "/menuLocally": (context) => FoodsLocalPage(),
        "/booking": (context) => BookingPage(),
        "/staff": (context) => StaffPage(),
        "/adminLogin": (context) => AdminLogin(),
        "/adminPage": (context) => AdminPage()
      },
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("Персонал"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: StaffHomePage(),
      ),
    );
  }
}

class StaffHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.admin_panel_settings_outlined),
              title: Text("Администрация"),
              onTap: () => Navigator.pushNamed(context, "/adminLogin"),
            ),
            ListTile(
              leading: Icon(Icons.kitchen_outlined),
              title: Text("Кухня"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Официанты"),
            ),
            ListTile(
              leading: Icon(Icons.markunread_mailbox_outlined),
              title: Text("Доставщики"),
            ),
            ListTile(
              leading: Icon(Icons.group_work),
              title: Text("Вакансии"),
            ),
          ],
        ),
      ),
    );
  }
}
