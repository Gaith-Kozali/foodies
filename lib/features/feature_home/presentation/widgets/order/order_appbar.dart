import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/external_colors.dart';

class OrderAppBar extends StatelessWidget {
  OrderAppBar({Key? key, required this.picture}) : super(key: key);
  String picture;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 390.h, color: ExternalColors.darkYellow),
        Positioned(
          left: 90,
          right: 90,
          top: 91.h,
          child: SvgPicture.asset(
            picture,
            width: 251.w,
            height: 228.h,
          ),
        ),
        Positioned(
            top: 44.h,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                Text(
                  'Order Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("asset/icons/Group.svg")),
              ],
            ))
      ],
    );
  }
}
