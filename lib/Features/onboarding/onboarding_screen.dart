import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theming/assets.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(Assets.assetsImagesOnboardingImage),
          ),
          Positioned(
            bottom: 1.h,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(10.sp),
              padding: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.backgroudncolor,
              ),
              child: Column(
                children: [
                  Text24(
                    text: "Look Good, Feel Good",
                    weight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text16(
                    textColor: const Color(0xff8F959E),
                    text:
                        "Create your individual & unique style and look amazing everyday.",
                    alignment: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: CustomButton(
                          text: "Men",
                          textColor: AppColors.graycolor,
                          color: AppColors.backgroudncolor,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      const Expanded(child: CustomButton(text: "Women")),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.letsStart);
                      },
                      child: Text16(
                        text: "Skip",
                        textColor: AppColors.graycolor,
                      )),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
