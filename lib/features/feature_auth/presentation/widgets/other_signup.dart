import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OtherSignUp extends StatelessWidget {
  const OtherSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: Container(
              width: 187.w,
              height: 49.4.h,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0XFFE0E3E8)),
                  borderRadius:
                  BorderRadius.circular(5.9).r),
              child: FittedBox(child: Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      "asset/icons/Google.svg"),
                  Text(
                    'signup with Google',
                    style: TextStyle(
                      color: Color(0xFF7D8B9E),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      height: 0.14.h,
                    ),
                  )
                ],
              ),)),
        ),
        GestureDetector(
          child: Container(
              width: 187.w,
              height: 49.4.h,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0XFFE0E3E8)),
                  borderRadius:
                  BorderRadius.circular(5.9).r),
              child: FittedBox(child: Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      "asset/icons/Microsoft.svg"),
                  Text(
                    'signup with Microsoft',
                    style: TextStyle(
                      color: const Color(0xFF7D8B9E),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      height: 0.14.h,
                    ),
                  )
                ],
              ),)),
        )
      ],
    );
  }
}
