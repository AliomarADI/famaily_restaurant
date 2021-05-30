class User{
  int id;
  String numberPhone;
  String countPersonsFamily;
  String date;
  String pozhelanie;

  User(this.id, this.numberPhone, this.countPersonsFamily, this.date,
      this.pozhelanie);

  Map<String,dynamic> toMap(){
    final map = Map<String,dynamic>();
    map['id'] = id;
    map['numberPhone'] = numberPhone;
    map['countPersonsFamily'] = countPersonsFamily;
    map['date'] = date;
    map['pozhelanie'] = pozhelanie;
    return map;
  }

  User.fromMap(Map<String,dynamic> map, this.id, this.numberPhone, this.countPersonsFamily, this.date, this.pozhelanie){
    id = map['id'];
    numberPhone = map['numberPhone'];
    countPersonsFamily = map['countPersonsFamily'];
    date = map['date'];
    pozhelanie = map['pozhelanie'];
  }
  
}