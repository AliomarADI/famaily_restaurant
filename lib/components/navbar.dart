import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('LOVE & LIVE'),
            accountEmail: Text('Махаббатқа толы өмір сүр'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/iconBear.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/sun.jpg")),
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.menu_book),
          //   title: Text('Меню from json'),
          //   onTap: () {
          //     Navigator.pushNamed(context, '/menuLocally');
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('Меню '),
            onTap: () {
              Navigator.pushNamed(context, '/menuPage');
            },
          ),
          ListTile(
            leading: Icon(Icons.library_add_check),
            title: Text('Моя бронировка'),
            onTap: () => Navigator.pushNamed(context, '/reservs'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Уведомления'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Настройки'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Инфо'),
            onTap: () => Navigator.pushNamed(context, "/infoPage"),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Для персонала'),
            onTap: () => Navigator.pushNamed(context, "/staff"),
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
