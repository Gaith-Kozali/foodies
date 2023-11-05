import 'package:flutter/material.dart';
import 'package:foodies/features/feature_home/entities/calories_info.dart';

class CaloriesInfoWidget extends StatelessWidget {
  CaloriesInfoWidget({Key? key, required this.information}) : super(key: key);
  CaloriesInfo information;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          information.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0x8C201A1A),
            fontSize: 16,
            fontWeight: FontWeight.w600,
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
