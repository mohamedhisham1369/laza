import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/Features/create%20account/widgets/social_media_button.dart';
import 'package:laza/Features/product%20details/presentation/widgets/product_review_widget.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/back_widget.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text18(
          text: 'Review',
        ),
        leading: const BackWidget(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text18(text: "245 Reviews"),
                      5.h.height(),
                      Row(
                        children: [
                          Text16(text: "4.8"),
                          2.w.width(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star_outlined,
                                color: Colors.yellow,
                                size: 15.sp,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: Colors.yellow,
                                size: 15.sp,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: Colors.yellow,
                                size: 15.sp,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: Colors.yellow,
                                size: 15.sp,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: Colors.yellow,
                                size: 15.sp,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  // const Spacer(),
                  50.w.width(),
                  Expanded(
                    child: SocailMediaButton(
                        onpressed: () {
                          context.pushNamed(Routes.addReviewScreen);
                        },
                        icon: Icons.edit_square,
                        text: "Add Review",
                        color: AppColors.redColorBUtton),
                  )
                ],
              ),
              25.h.height(),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => 20.h.height(),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return const ProductReviewWidget();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
