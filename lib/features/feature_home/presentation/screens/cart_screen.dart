import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/cart/cart_appbar.dart';
import '../widgets/cart/cart_item.dart';
import '../widgets/cart/payment_info_widget.dart';
import '../widgets/cart/payment_textfield.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(children: [
          const CartAppBar(),
          SizedBox(
            height: 402.h,
            width: 396.w,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return  CartItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 24.h);
                },
                itemCount: 5),
          ),
          SizedBox(
            height: 36.h,
          ),
          const PaymentTextField(),
          SizedBox(
            height: 30.h,
          ),
          const PaymentInfoWidget(),
          SizedBox(
            height: 20.h,
          )
        ]),
      ),
    );
  }
}
