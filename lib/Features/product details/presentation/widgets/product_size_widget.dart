import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class ProductSizeWidget extends StatelessWidget {
  const ProductSizeWidget({super.key, required this.size});
  final List<String> size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text18(text: "Size"),
            const Spacer(),
            Text16(
              text: "Size Guide",
              textColor: AppColors.graycolor,
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 50.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: size.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                decoration: BoxDecoration(
                    color: AppColors.secondWightColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Text16(
                  text: size[index],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 5.w,
              );
            },
          ),
        ),
      ],
    );
  }
}
