import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodies/features/feature_home/presentation/widgets/order/calories_info_widget.dart';
import '../../../../../core/external_colors.dart';
import '../../../entities/calories_info.dart';

class DetailsWidget extends StatelessWidget {
  DetailsWidget({Key? key, required this.caloriesInfo}) : super(key: key);
  List<CaloriesInfo> caloriesInfo;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66.h,
      width: 323.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CaloriesInfoWidget(information: caloriesInfo.elementAt(0)),
          Container(
            width: 2.w,
            height: 66.h,
            decoration: ShapeDecoration(
              color: ExternalColors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          CaloriesInfoWidget(information: caloriesInfo.elementAt(1)),
          Container(
            width: 2.w,
            height: 66.h,
            decoration: ShapeDecoration(
              color: ExternalColors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          CaloriesInfoWidget(information: caloriesInfo.elementAt(2)),
          Container(
            width: 2.w,
            height: 66.h,
            decoration: ShapeDecoration(
              color: ExternalColors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          CaloriesInfoWidget(information: caloriesInfo.elementAt(3)),
        ],
      ),
    );
  }
}
