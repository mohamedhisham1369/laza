import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class SocailMediaButton extends StatelessWidget {
  const SocailMediaButton(
      {super.key,
      required this.onpressed,
      required this.icon,
      required this.text,
      required this.color});
  final VoidCallback onpressed;
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.backgroudncolor),
            SizedBox(
              width: 5.w,
            ),
            Text16(
              text: text,
              textColor: AppColors.backgroudncolor,
            ),
          ],
        ),
      ),
    );
  }
}
