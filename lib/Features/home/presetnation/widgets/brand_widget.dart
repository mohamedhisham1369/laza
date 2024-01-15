import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/Features/home/presetnation/widgets/brand_item_widget.dart';
import 'package:laza/core/theming/assets.dart';

class BrandWidget extends StatelessWidget {
  BrandWidget({super.key});
  final List<Map<String, dynamic>> brandList = [
    {"label": "Adidas", "image": Assets.assetsImagesAdidas},
    {"label": "Nike", "image": Assets.assetsImagesNike},
    {"label": "Fila", "image": Assets.assetsImagesFila},
    {"label": "puma", "image": Assets.assetsImagesPumaLogo}
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60.h,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return BrandItemWidget(
                label: brandList[index]["label"],
                image: brandList[index]["image"],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 20.w,
              );
            },
            itemCount: brandList.length));
  }
}
