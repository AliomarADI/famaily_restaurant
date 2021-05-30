import 'package:family_restaurant/components/navbar.dart';
import 'package:family_restaurant/model/user.dart';
import 'package:family_restaurant/pages/reservations.dart';
import 'package:family_restaurant/pages/staffPages/StaffPage.dart';
import 'package:family_restaurant/pages/staffPages/admin/admin_login.dart';
import 'package:family_restaurant/pages/staffPages/admin/admin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:date_time_picker/date_time_picker.dart';

import '../main.dart';
import 'FoodsLocalPage.dart';
import 'info.dart';
import 'menu.dart';

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/booking": (context) => BookingPage(),
        "/menuPage": (context) => MenuFood(),
        "/menuLocally": (context) => FoodsLocalPage(),
        "/reservs": (context) => ReservationsPage(),
        "/staff": (context) => StaffPage(),
        "/adminLogin": (context) => AdminLogin(),
        "/adminPage": (context) => AdminPage(),
        "/infoPage": (context) => InfoPage()
      },
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("Booking page"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: BookingMainPage(),
      ),
    );
  }
}

class BookingMainPage extends StatefulWidget {
  HomePageInBooking createState() => HomePageInBooking();
}

class HomePageInBooking extends State<BookingMainPage> {
  final _phoneNumberCtl = TextEditingController();
  final _countPersonsCtl = TextEditingController();
  final _dateCtl = TextEditingController();
  final _pozhelaniya = TextEditingController();

  @override
  void dispose() {
  _phoneNumberCtl.dispose();
  _countPersonsCtl.dispose();
  _dateCtl.dispose();
  _pozhelaniya.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var checkAnimator = false;

    var _checkbox;

    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _phoneNumberCtl,
                decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Номер телефона',
                    helperText: 'Phone format: 8-(XXX)-XXX-XXXX',
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue, width: 3))),
                keyboardType: TextInputType.phone,
                inputFormatters: [],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _countPersonsCtl,
                decoration: InputDecoration(
                    labelText: 'На сколько персон бронировать?',
                    hintText: 'Введите число',
                    prefixIcon: Icon(Icons.family_restroom),
                    suffixIcon: Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue, width: 3))),
                keyboardType: TextInputType.number,
                inputFormatters: [],
              ),
              SizedBox(
                height: 5,
              ),
              CheckboxListTile(
                title: const Text("Аниматор для детей"),
                value: checkAnimator,
                onChanged: (newValue) {
                  setState(() {
                    checkAnimator = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              SizedBox(
                height: 20,
              ),
              DateTimePicker(
                controller: null,
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Hour",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _pozhelaniya,
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: 'Какие нибудь пожелания?',
                    hintText:
                        'Можете предупредить о событиях, мы окажем соодействие)',
                    prefixIcon: Icon(
                      Icons.star_outline_sharp,
                      color: Colors.amber,
                    ),
                    suffixIcon: Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue, width: 3))),
                keyboardType: TextInputType.text,
                inputFormatters: [],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white70)),
                  onPressed: () {
                    _registerReserv();
                    Navigator.pushNamed(context, '/reservs');
                  },
                  padding: EdgeInsets.all(15.0),
                  color: Colors.green,
                  textColor: Colors.black87,
                  child: Text("Отправить", style: TextStyle(fontSize: 15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _registerReserv() {

    User user = new User(0, _phoneNumberCtl.text, _countPersonsCtl.text, "_dateCtl.text", _pozhelaniya.text);
    Navigator.pushNamed(
      context,
      "/reservs",
      arguments: {'userArg': user},
    );
  }
}


