import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../main.dart';
import '../../FoodsLocalPage.dart';
import '../../booking.dart';
import '../../menu.dart';
import '../StaffPage.dart';
import 'admin_page.dart';

class AdminLogin extends StatelessWidget {
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
        "/adminPage": (context) => AdminPage()
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Admin"),
          centerTitle: true,

        ),
        body: _AdminLogin(),
      ),
    );
  }
}

class _AdminLogin extends StatefulWidget{
  _AdminLoginPage createState() =>_AdminLoginPage();
}

class _AdminLoginPage extends State<_AdminLogin> {

  final _loginCtl = TextEditingController();
  final _passwordCtl = TextEditingController();


  @override
  void dispose(){
    _loginCtl.dispose();
    _passwordCtl.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          SizedBox(
            height: 1,
          ),
          TextFormField(
            controller: _loginCtl,
            decoration: InputDecoration(
                labelText: "Введите логин",
                prefixIcon: Icon(
                  Icons.admin_panel_settings_sharp,
                  color: Colors.blue,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black87)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.blue))),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _passwordCtl,
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Введите пароль",
                hintText: "Никому не показывайте свой пароль!",
                prefixIcon: Icon(Icons.password),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black87)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.blue))),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.all(10),
            height: 50.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                _checkLogin(context,_loginCtl.text, _passwordCtl.text);
              },
              padding: EdgeInsets.all(15.0),
              color: Colors.blue.shade400,
              textColor: Colors.black87,
              child: Text("Войти", style: TextStyle(fontSize: 15)),
            ),
          ),
        ],
      ),
    );
  }
}

void _checkLogin(BuildContext context,String login, String password) {
  if(login == "aigerim" && password == "lovelive"){
    Navigator.pushNamed(context, "/adminPage");
  }else{
    Alert(
      context: context,
      type: AlertType.info,
      title: "Ошибочка!",
      desc: "Введенный логин или пароль неправильный!",
      buttons: [
        DialogButton(
          child: Text(
            "Назад",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pushNamed(context, "/adminLogin"),
          color: Colors.amber,
          radius: BorderRadius.circular(0.0),
        ),
      ],
    ).show();
  }
}
