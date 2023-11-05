import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 179.w,
            child: const Divider(
              color: Color(0XFF7E8B9E),
            )),
        Text(
          'OR',
          style: TextStyle(
            color: const Color(0xFF7D8B9E),
            fontSize: 11.1.sp,
            fontWeight: FontWeight.w500,
            height: 0.16.h,
          ),
        ),
        SizedBox(
            width: 179.w,
            child: const Divider(
              color: Color(0XFF7E8B9E),
            )),
      ],
    );
  }
}
