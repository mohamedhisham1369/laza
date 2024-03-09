import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/Features/review/bloc/cubit/review_cubit.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/back_widget.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_text_form_field.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReviewCubit(),
      child: BlocConsumer<ReviewCubit, ReviewState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ReviewCubit reviewCubit = ReviewCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text18(text: "Add Review "),
              leading: const BackWidget(),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text16(text: "Name"),
                    5.h.height(),
                    CustomTextFormField(
                      padding: EdgeInsets.only(left: 15.w),
                      backgroundColor: const Color(0xffF5F6FA),
                      borderColor: Colors.transparent,
                      hintText: "Type your name",
                      hintStyle: const TextStyle(
                        color: AppColors.graycolor,
                      ),
                    ),
                    20.h.height(),
                    Text16(text: "How was your experience ?"),
                    5.h.height(),
                    CustomTextFormField(
                      height: 150.h,
                      maxLines: 5,
                      padding: EdgeInsets.only(left: 15.w),
                      backgroundColor: const Color(0xffF5F6FA),
                      borderColor: Colors.transparent,
                      hintText: "Describe your experience?",
                      hintStyle: const TextStyle(
                        color: AppColors.graycolor,
                      ),
                    ),
                    20.h.height(),
                    Text16(text: "Star"),
                    Slider(
                        value: reviewCubit.value,
                        min: 0,
                        max: 5,
                        onChanged: (number) {
                          reviewCubit.changeSliderValue(number);
                        }),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SafeArea(
                child: Padding(
              padding: EdgeInsets.all(20.sp),
              child: const CustomButton(text: "Submit Review"),
            )),
          );
        },
      ),
    );
  }
}
