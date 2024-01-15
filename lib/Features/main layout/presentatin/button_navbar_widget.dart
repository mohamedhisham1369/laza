import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_texts.dart';
import 'package:svg_flutter/svg.dart';

class ButtonNavWidget extends StatelessWidget {
  const ButtonNavWidget(
      {super.key,
      required this.text,
      required this.check,
      required this.onpressed,
      required this.image});
  final String text;
  final bool check;
  final VoidCallback onpressed;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.secondWightColor),
        // width: 30.w,

        child: check
            ? Text14(
                text: text,
                textColor: AppColors.primaryColor,
              )
            : SvgPicture.asset(image),
      ),
    );
  }
}
