import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 396.w,
      height: 118.h,
      child: Row(
        children: [
          Image.asset("asset/cart_items/image 2.png",
              width: 93.w, height: 78.h),
          SizedBox(width: 40.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Potatoes With Mozirlla',
                style: TextStyle(
                  color: Color(0xFFF5A31F),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'size : 7.60 fl oz/225ml ',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6000000238418579),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  const Text(
                    '\$19.98',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 64.w,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        size: 20,
                        Icons.add_circle_outline,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 9.w,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        size: 20,
                        Icons.remove_circle_outline,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 9.w,
                  ),
                  const Text(
                    '01',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
