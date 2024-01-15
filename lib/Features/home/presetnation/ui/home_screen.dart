import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/Features/home/presetnation/widgets/brand_widget.dart';
import 'package:laza/Features/home/presetnation/widgets/products_widget.dart';
import 'package:laza/core/theming/assets.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_text_form_field.dart';
import 'package:laza/core/widgets/custom_texts.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F6FA),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(Assets.assetsImagesMenu),
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F6FA),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(Assets.assetsImagesBag),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text24(text: "Hello"),
              Text16(
                text: "Welcome to Laza.",
                textColor: AppColors.graycolor,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  const Expanded(
                    child: CustomTextFormField(
                      backgroundColor: Color(0xffF5F6FA),
                      borderColor: Colors.transparent,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.graycolor,
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        color: AppColors.graycolor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: AppColors.primaryColor),
                    padding: EdgeInsets.all(10.sp),
                    child: const Icon(
                      FontAwesomeIcons.microphone,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text16(
                    text: "Choose Brand",
                    weight: FontWeight.w400,
                  ),
                  const Spacer(),
                  Text14(
                    text: "View All",
                    textColor: AppColors.graycolor,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              BrandWidget(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text16(
                    text: "New Arraival",
                    weight: FontWeight.w400,
                  ),
                  const Spacer(),
                  Text14(
                    text: "View All",
                    textColor: AppColors.graycolor,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ProductsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
