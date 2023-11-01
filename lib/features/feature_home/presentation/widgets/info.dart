import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodies/features/feature_home/entities/information.dart';

class Info extends StatelessWidget {
   Info({Key? key,required this.information}) : super(key: key);
    Information information;
  @override
  Widget build(BuildContext context) {
    return
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              information.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0x8C201A1A),
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 0.07,
              ),
            ),
            Text(
              information.calories,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF2D2121),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 0.06,
              ),
            )
          ],
        );
  }
}
