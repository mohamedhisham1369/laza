import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/assets.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/back_widget.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_text_form_field.dart';
import 'package:laza/core/widgets/custom_texts.dart';
import 'package:svg_flutter/svg.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                    alignment: Alignment.centerLeft, child: BackWidget()),
                Text28(
                  text: 'Forgot Password',
                ),
                SvgPicture.asset(Assets.assetsImagesLockIamge),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text14(
                    text: 'email',
                    textColor: AppColors.graycolor,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const CustomTextFormField(
                  hintText: "email",
                  prefixIcon: Icon(Icons.email_outlined),
                  keyboardType: TextInputType.emailAddress,
                ),
                // const Spacer(),
                SizedBox(
                  height: 100.h,
                ),
                Text14(
                  text:
                      "Please write your email to receive a confirmation code to set a new password.",
                  maxLines: 2,
                  textColor: AppColors.graycolor,
                  alignment: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomButton(text: "Confirm mail")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
