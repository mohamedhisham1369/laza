import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_texts.dart';
import 'package:svg_flutter/svg.dart';

class BrandItemWidget extends StatelessWidget {
  const BrandItemWidget({super.key, required this.label, required this.image});
  final String label;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: AppColors.secondWightColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(5.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.backgroudncolor),
              child: SvgPicture.asset(
                image,
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: 10.w,
          ),
          Text16(text: label)
        ],
      ),
    );
  }
}
