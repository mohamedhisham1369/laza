import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/assets.dart';
import 'package:laza/core/widgets/back_widget.dart';
import 'package:svg_flutter/svg.dart';

class ProductTopImageWidget extends StatelessWidget {
  const ProductTopImageWidget({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250.h,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0.sp),
          child: Row(
            children: [
              const BackWidget(
                isProduct: true,
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.all(10.sp),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(Assets.assetsImagesBagGray),
              ),
            ],
          ),
        )
      ],
    );
  }
}
