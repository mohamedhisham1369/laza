import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/Features/product%20details/presentation/ui/product_details_screen.dart';
import 'package:laza/core/theming/assets.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_texts.dart';
import 'package:svg_flutter/svg.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.price});
  final String image;
  final String name;
  final int price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return ProductDetailsSCreen(image: image, name: name, price: price);
        }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.secondWightColor,
                ),
                child: Image.asset(image),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0.sp),
                    child: InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(Assets.assetsImagesHeart)),
                  )),
            ],
          ),
          Text14(
            text: name,
            maxLines: 3,
            overFlow: TextOverflow.ellipsis,
            // size: 12.sp,
          ),
          Text16(
            text: "\$ $price",
          ),
        ],
      ),
    );
  }
}
