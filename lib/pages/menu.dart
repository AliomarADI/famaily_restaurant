import 'package:family_restaurant/components/navbar.dart';
import 'package:family_restaurant/model/food.dart';
import 'package:family_restaurant/pages/reservations.dart';
import 'package:family_restaurant/pages/staffPages/StaffPage.dart';
import 'package:family_restaurant/pages/staffPages/admin/admin_login.dart';
import 'package:family_restaurant/pages/staffPages/admin/admin_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'FoodsLocalPage.dart';
import 'booking.dart';
import 'info.dart';

class MenuFood extends StatelessWidget {
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
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("Menu"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: MenuMainPage(),
      ),
    );
  }
}

class MenuMainPage extends StatefulWidget {
  HomePageInMenuFood createState() => HomePageInMenuFood();
}

class HomePageInMenuFood extends State<MenuMainPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: ListView(
          children: [
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://treeoflife.kz/img/menu/baursak.jpg"),
                radius: 40,
              ),
              title: Text("Бауырсак"),
              subtitle: Text("10 штук    300тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media-manager.noticiasaominuto.com/gallery/1920/naom_5e3c3ce45aca2.jpg"),
                radius: 40,
              ),
              title: Text("Нан"),
              subtitle: Text("1 штук    200тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://sfbakers.com/wp-content/uploads/2020/01/1030352876.jpg"),
                radius: 40,
              ),
              title: Text("Самса"),
              subtitle: Text("3 штук: 700тг"),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Балалар мәзірі",
              style: TextStyle(fontSize: 20),
            )),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://besthqwallpapers.com/Uploads/23-2-2021/156917/cheese-sandwich-macro-melted-cheese-fastfood-cheese-burger.jpg"),
                radius: 40,
              ),
              title: Text("Сыр сэндвич"),
              subtitle: Text("600тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://wallpapershome.ru/images/pages/pic_h/393.jpg"),
                radius: 40,
              ),
              title: Text("Гамбургер"),
              subtitle: Text("900тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.istmira.com/uploads/posts/2018-12/1545255833_zakuski-kart-fri.jpg"),
                radius: 40,
              ),
              title: Text("Фри"),
              subtitle: Text("400тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://kartinkinaden.ru/uploads/posts/2021-03/thumbs/1617182255_6-p-zharenie-kurinie-krilishki-krasivo-6.jpg"),
                radius: 40,
              ),
              title: Text("Крылышки"),
              subtitle: Text("1200тг"),
            ),
            Divider(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Арнайы мәзір",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://kartinkinaden.ru/uploads/posts/2021-03/thumbs/1617152683_11-p-pitstsa-pepperoni-krasivo-14.jpg"),
                radius: 40,
              ),
              title: Text("Пицца  пепперони"),
              subtitle: Text("1200тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://sanremopasta.com/content/uploads/2020/05/San-Remo-Top-Ten-JAB_7497-Edit-1498x1000.jpg"),
                radius: 40,
              ),
              title: Text("Спагетти"),
              subtitle: Text("1400тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://samchef.ru/assets/i/ai/4/2/5/i/2862334.jpg"),
                radius: 40,
              ),
              title: Text("Домашний салат"),
              subtitle: Text("800тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://fermok.ru/wp-content/uploads/2020/04/s1200-25.jpg"),
                radius: 40,
              ),
              title: Text("Стейк"),
              subtitle: Text("2000тг"),
            ),
            Divider(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Сусындар",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://nikolaevskiy.info/upload/iblock/caa/caa160506c6919a5a08e68c097240899.jpg"),
                radius: 40,
              ),
              title: Text("Ice-tea"),
              subtitle: Text("1000тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("http"),
                radius: 40,
              ),
              title: Text("Домашний компот"),
              subtitle: Text("700тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.mds.yandex.net/get-zen_doc/1652143/pub_5eecb40dab1805323685ba42_5efc6899db3fe6783a970ff2/scale_1200"),
                radius: 40,
              ),
              title: Text("Мохито"),
              subtitle: Text("1500тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.victoria-group.ru/upload/iblock/aa2/aa24f700819d1ce4cab5b0ca4efae58f.jpg"),
                radius: 40,
              ),
              title: Text("Live лимонад"),
              subtitle: Text("1000тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://irecommend.ru/sites/default/files/imagecache/copyright1/user-images/1918708/RUIuv5K6LtLaJXNLPISIw.jpg"),
                radius: 40,
              ),
              title: Text("Love лимонад"),
              subtitle: Text("1000тг"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://foodddy.ru/recipe/limonad20.jpg"),
                radius: 40,
              ),
              title: Text("Класический лимонад"),
              subtitle: Text("800тг"),
            ),
          ],
        ),
      ),
    );
  }
}
