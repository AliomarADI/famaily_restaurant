import 'dart:ffi';

import 'package:family_restaurant/api/foodsApi.dart';
import 'package:family_restaurant/model/food.dart';
import 'package:flutter/material.dart';

class FoodsLocalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _FoodsLocalMainPage(),
      ),
    );
  }
}

class _FoodsLocalMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        FutureBuilder<List<Food>>(
          future: null,
          builder: (context, snapshot) {
            final foods = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return buildFoods(foods!);
                }
            }
          },
        );
  }

  Widget buildFoods(List<Food> foods) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(food.image),
            ),
            title: Text(food.name),
            subtitle: Text(food.quantity.toStringAsFixed(food.quantity)),
          );
        },
      );
}
