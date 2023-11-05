import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../entities/containment.dart';

class ContainmentWidget extends StatelessWidget {
  ContainmentWidget({Key? key, required this.containment}) : super(key: key);
  List<Containment> containment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'ingredients',
          style: TextStyle(
            color: Color(0xFF2D2121),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        SizedBox(
          width: 320.w,
          height: 75.h,
          child: ListView.builder(
            itemCount: containment.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: index == containment.length - 1
                    ? EdgeInsets.zero
                    : EdgeInsets.only(right: 20.w),
                child: Column(
                  children: [
                    Container(
                      width: 48.w,
                      height: 44.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFF8B64C)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: SvgPicture.asset(
                        containment[index].picture,
                      ),
                    ),
                    Text(
                      containment[index].name,
                      style: const TextStyle(
                        color: Color(0xFF2D2121),
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
