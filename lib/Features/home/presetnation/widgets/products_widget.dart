import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/Features/home/presetnation/widgets/product_item_widget.dart';
import 'package:laza/core/theming/assets.dart';

class ProductsWidget extends StatelessWidget {
  ProductsWidget({super.key});
  final List<Map<String, dynamic>> productsList = [
    {
      "name": "Nike Sportswear Club Fleece",
      "image": Assets.assetsImagesJaket1,
      "price": 90
    },
    {
      "name": "Trail Running Jacket Nike Windrunner",
      "image": Assets.assetsImagesJaket3,
      "price": 150
    },
    {
      "name": "Trail Running Jacket Nike Windrunner",
      "image": Assets.assetsImagesJaket2,
      "price": 200
    },
    {
      "name": "Nike Sportswear Club Fleece",
      "image": Assets.assetsImagesJaket4,
      "price": 400
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productsList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          mainAxisExtent: 320.sp),
      itemBuilder: (BuildContext context, int index) {
        return ProductItemWidget(
            
            image: productsList[index]["image"],
            name: productsList[index]["name"],
            price: productsList[index]["price"]);
      },
    );
  }
}
