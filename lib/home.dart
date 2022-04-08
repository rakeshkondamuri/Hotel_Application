import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/recipe_card.dart';

class recipenew extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<recipenew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Food Recipes'),
            ],
          ),
        ),
        body: RecipeCard(
          title: 'My recipe',
          rating: '4.9',
          cookTime: '30 min',
          thumbnailUrl:
              'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
        ));
  }
}
