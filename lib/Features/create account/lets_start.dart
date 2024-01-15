import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/Features/create%20account/widgets/social_media_button.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/back_widget.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class LetsStart extends StatelessWidget {
  const LetsStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackWidget(),
                ],
              ),
              Text28(text: "Let’s Get Started"),
              SizedBox(
                height: 150.h,
              ),
              SocailMediaButton(
                onpressed: () {},
                icon: FontAwesomeIcons.facebookF,
                text: 'Facebook',
                color: const Color(0xff4267B2),
              ),
              SizedBox(
                height: 10.h,
              ),
              SocailMediaButton(
                onpressed: () {},
                icon: FontAwesomeIcons.twitter,
                text: 'twitter',
                color: const Color(0xff1DA1F2),
              ),
              SizedBox(
                height: 10.h,
              ),
              SocailMediaButton(
                onpressed: () {},
                icon: FontAwesomeIcons.google,
                text: 'Google',
                color: const Color(0xffEA4335),
              ),
              SizedBox(height: 50.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text16(
                    text: "Already have an account?",
                    textColor: AppColors.graycolor,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                      child: Text16(text: "Sign in"))
                ],
              ),
              SizedBox(height: 30.h),
              CustomButton(
                  onPressed: () => context.pushNamed(Routes.signUpScreen),
                  text: "Create a new account")
            ],
          ),
        ),
      ),
    );
  }
}
