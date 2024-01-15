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

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackWidget(),
                SizedBox(height: 20.h),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text28(text: "Sign up")),
                SizedBox(
                  height: 50.h,
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
                Text14(
                  text: 'email',
                  textColor: AppColors.graycolor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                const CustomTextFormField(
                  hintText: "email",
                  prefixIcon: Icon(Icons.email_outlined),
                  keyboardType: TextInputType.emailAddress,
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
                CustomButton(
                    onPressed: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                    text: "Sign up")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
