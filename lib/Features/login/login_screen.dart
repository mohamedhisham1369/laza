import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/back_widget.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_text_form_field.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackWidget(),
                SizedBox(height: 20.h),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text28(
                        text: "Welcome",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text16(
                        text: "Please enter your data to continue",
                        textColor: AppColors.graycolor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Text14(
                  text: 'Username',
                  textColor: AppColors.graycolor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                const CustomTextFormField(
                  hintText: "Username",
                  keyboardType: TextInputType.name,
                  prefixIcon: Icon(FontAwesomeIcons.user),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text14(
                  text: 'password',
                  textColor: AppColors.graycolor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                const CustomTextFormField(
                  hintText: "password",
                  obscureText: true,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () => context.pushNamed(Routes.forgotpasswordScreen),
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text16(
                      text: "Forgot password?",
                      textColor: const Color(0xffEA4335),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Text14(text: "Remember me"),
                    const Spacer(),
                    Switch(value: true, onChanged: (value) {}),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "By connecting your account confirm that you agree with our ",
                        style: TextStyle(
                          color: AppColors.graycolor,
                          fontSize: 14.sp,
                        ),
                      ),
                      TextSpan(
                        text: "Term and Condition",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomButton(
                    onPressed: () {
                      context.pushNamed(Routes.mainLayout);
                    },
                    text: "Login")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
