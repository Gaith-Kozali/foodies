import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/external_colors.dart';
import '../../../entities/containment.dart';
import '../../../entities/food.dart';
import 'containment_widget.dart';
import 'details_widget.dart';

class OrderBody extends StatelessWidget {
   OrderBody({Key? key,required this.food}) : super(key: key);
Food food;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 328.h,
      right: 38.w,
      left: 41.w,
      child: Container(
        width: 349.w,
        height: 518.h,
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              food.name,
              style: TextStyle(
                color: const Color(0xFF2D2121),
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              food.description,
              style: TextStyle(
                color: const Color(0xA5201A1A),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 1.3,
              ),
            ),
             DetailsWidget(caloriesInfo: food.caloriesInfo),
            ContainmentWidget(
              containment: food.containment,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  food.price,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Icon(
                  Icons.shopping_bag,
                  size: 28,
                  color: ExternalColors.yellow,
                )
              ],
            ),
            SizedBox(
              width: 186.w,
              height: 40.h,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        ExternalColors.darkYellow),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                child: const Text(
                  'Order',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
