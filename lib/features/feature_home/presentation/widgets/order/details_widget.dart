import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodies/features/feature_home/presentation/widgets/calories_info_widget.dart';
import '../../../../core/external_colors.dart';
import '../../entities/calories_info.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 66.h,
      width: 323.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CaloriesInfoWidget(
              information:
              CaloriesInfo(title: "Kcal", calories: "338")),
          Container(
            width: 2.w,
            height: 66.h,
            decoration: ShapeDecoration(
              color: ExternalColors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          CaloriesInfoWidget(
              information:
              CaloriesInfo(title: "Fats", calories: "16")),
          Container(
            width: 2.w,
            height: 66.h,
            decoration: ShapeDecoration(
              color: ExternalColors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          CaloriesInfoWidget(
              information:
              CaloriesInfo(title: "Proteins", calories: "13")),
          Container(
            width: 2.w,
            height: 66.h,
            decoration: ShapeDecoration(
              color: ExternalColors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          CaloriesInfoWidget(
              information:
              CaloriesInfo(title: "Carbs", calories: "21")),
        ],
      ),
    );
  }
}
