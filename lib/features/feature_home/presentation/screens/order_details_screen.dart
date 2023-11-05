import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/core/external_colors.dart';
import '../widgets/order/order_appbar.dart';
import '../widgets/order/order_body.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
          ),
          const OrderAppBar(),
          const OrderBody()
        ],
      ),
    );
  }
}
