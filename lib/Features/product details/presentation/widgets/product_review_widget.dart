import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/assets.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class ProductReviewWidget extends StatelessWidget {
  const ProductReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(Assets.assetsImagesReview)),
                SizedBox(
                  width: 5.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text16(text: "Ronald Richards"),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.access_time_outlined,
                          color: AppColors.graycolor,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text14(
                          text: "13 Sep, 2020",
                          textColor: AppColors.graycolor,
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text16(text: "4.8"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text14(
                          text: "rating",
                          textColor: AppColors.graycolor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_outlined,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text16(
                overFlow: TextOverflow.ellipsis,
                textColor: AppColors.graycolor,
                maxLines: 3,
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...")
          ],
        ),
      ],
    );
  }
}
