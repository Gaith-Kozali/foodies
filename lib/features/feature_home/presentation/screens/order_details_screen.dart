import 'package:flutter/material.dart';
import 'package:foodies/features/feature_home/entities/calories_info.dart';
import 'package:foodies/features/feature_home/entities/food.dart';
import '../../entities/containment.dart';
import '../widgets/order/order_appbar.dart';
import '../widgets/order/order_body.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Food food = Food(
        picture: "asset/images/humberger.svg",
        name: "Grilled Chicken Peri Peri",
        description:
            "savor the satisfyin  crunch of our juicy chicken patty, topped wiht shredded lettuce and just righr amount of creamy "
            "mayinnaise all served on a perfectly toasted bun ",
        caloriesInfo: [
          CaloriesInfo(title: "Kcal", calories: "338"),
          CaloriesInfo(title: "Fats", calories: "16"),
          CaloriesInfo(title: "Proteins", calories: "13"),
          CaloriesInfo(title: "Carbs", calories: "21")
        ],
        containment: [
          Containment(name: "onion", picture: "asset/containment/onion.svg"),
          Containment(name: "Tomato", picture: "asset/containment/tomato.svg"),
          Containment(
              name: "chicken", picture: "asset/containment/chicken.svg"),
          Containment(
              name: "lettuce", picture: "asset/containment/lettuce.svg"),
          Containment(name: "sauce", picture: "asset/containment/sauce.svg")
        ],
        price: '\$12.99');
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
          ),
          OrderAppBar(
            picture: food.picture,
          ),
          OrderBody(food: food)
        ],
      ),
    );
  }
}
