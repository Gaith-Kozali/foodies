import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/external_colors.dart';

class PaymentTextField extends StatelessWidget {
  const PaymentTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68.h,
      width: 373.w,
      child: TextFormField(
          decoration: InputDecoration(
            hintText: "promo code",
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.3),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: ExternalColors.yellow,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    const BorderSide(color: ExternalColors.yellow, width: 1)),
            suffixIcon: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 14.h).copyWith(right: 11.w),
              child: SizedBox(
                  width: 104.w,
                  height: 40.h,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ExternalColors.yellow),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Apply',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.shopping_bag,
                            size: 16,
                          )
                        ],
                      ))),
            ),
          ),
          cursorColor: Colors.lightBlueAccent),
    );
  }
}
