import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/features/feature_home/entities/information.dart';

import '../widgets/info.dart';

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
          ),
          Container(height: 390.h, color: const Color(0xFFF5A31F)),
          Positioned(
              left: 90,
              right: 90,
              top: 91.h,
              child: SvgPicture.asset(
                "asset/icons/Microsoft.svg",
                width: 251.w,
                height: 228.h,
              )),
          Positioned(
              top: 44.h,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'Order Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("asset/icons/group.svg")),
                ],
              )),
          Positioned(
            top: 328.h,
            right: 38.w,
            left: 41.w,
            child: Container(
              width: 349.w,
              height: 518.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x4CFFDA88),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Grilled Chicken Peri Peri',
                    style: TextStyle(
                      color: Color(0xFF2D2121),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'Savor the satisfying crunch of our juicy chicken patty, topped with shredded lettuce and just the right amount of creamy mayonnaise all served on a perfectly toasted bun.',
                    style: TextStyle(
                      color: Color(0xA5201A1A),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    height: 66.h,
                    width: 323.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Info(
                            information:
                                Information(title: "Kcal", calories: "338")),
                        Container(
                          width: 2.w,
                          height: 66.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF8B64C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        Info(
                            information:
                                Information(title: "Fats", calories: "16")),
                        Container(
                          width: 2.w,
                          height: 66.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF8B64C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        Info(
                            information:
                                Information(title: "Proteins", calories: "13")),
                        Container(
                          width: 2.w,
                          height: 66.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF8B64C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        Info(
                            information:
                                Information(title: "Carbs", calories: "21")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
