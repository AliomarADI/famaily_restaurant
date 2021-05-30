import 'package:family_restaurant/components/navbar.dart';
import 'package:family_restaurant/model/user.dart';
import 'package:family_restaurant/pages/staffPages/StaffPage.dart';
import 'package:family_restaurant/pages/staffPages/admin/admin_login.dart';
import 'package:family_restaurant/pages/staffPages/admin/admin_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'FoodsLocalPage.dart';
import 'booking.dart';
import 'info.dart';
import 'menu.dart';

class ReservationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/booking": (context) => BookingPage(),
        "/menuPage": (context) => MenuFood(),
        "/menuLocally": (context) => FoodsLocalPage(),
        "/reservs": (context) => ReservationsPage(),
        "/booking": (context) => BookingMainPage(),
        "/staff": (context) => StaffPage(),
        "/adminLogin": (context) => AdminLogin(),
        "/adminPage": (context) => AdminPage(),
        "/infoPage": (context) => InfoPage()
      },
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/booking");
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("Ваши бронирования"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Center(
          child: ListView(
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Список",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://assets.holder.nl/8b43ce04a9094d34a430e5d39f19ff91_a18f0051a1c940dab8b83d753a60b3ad/160/dining_icon-01.png"),
                  radius: 30,
                ),
                title: Text("Время: 20.00 | День 7.06"),
                subtitle:
                    Text("Номер телефона: (707)934-5820\nКоличество персон: 4"),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/001/261/037/original/happy-family-round-icon-vector.jpg"),
                  radius: 30,
                ),
                title: Text("Время: 18.00 | День 17.06"),
                subtitle:
                    Text("Номер телефона гостей: (705)157-2215\nКоличество персон: 7"),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.pinclipart.com/picdir/middle/577-5778398_emojis-familia-em-png-clipart.png",),
                  radius: 30,

                ),
                title: Text("Время: 18.00 | День 23.06"),
                subtitle:
                    Text("Номер телефона: (707)934-5820\nКоличество персон: 3"),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




