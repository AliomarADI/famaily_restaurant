// import 'package:family_restaurant/model/food.dart';
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class FoodsApi{
//   static Future<List<Food>> getFoodsLocally(BuildContext context) async {
//     final assetBundle = DefaultAssetBundle.of(context);
//     final data = await assetBundle.loadString("assets/food.json");
//     final body = json.decode(data);
//
//     return body.map<Food>(Food.fromJson).toList;
//   }
//
// }