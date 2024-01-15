import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text18(text: "Description"),
        SizedBox(
          height: 10.h,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with",
                style: TextStyle(
                  color: AppColors.graycolor,
                  fontSize: 14.sp,
                ),
              ),
              TextSpan(
                text: " Read More..",
                style: TextStyle(fontSize: 16.sp),
              ),
            ],
          ),
          textAlign: TextAlign.start,
          maxLines: 3,
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
