import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/Features/product%20details/presentation/widgets/product_descritption_widget.dart';
import 'package:laza/Features/product%20details/presentation/widgets/product_images_list_widget.dart';
import 'package:laza/Features/product%20details/presentation/widgets/product_review_widget.dart';
import 'package:laza/Features/product%20details/presentation/widgets/product_size_widget.dart';
import 'package:laza/Features/product%20details/presentation/widgets/product_top_image_widget.dart';
import 'package:laza/core/theming/assets.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class ProductDetailsSCreen extends StatelessWidget {
  ProductDetailsSCreen(
      {super.key,
      required this.image,
      required this.name,
      required this.price});
  final String image;
  final String name;
  final int price;
  final List<String> productimages = [
    Assets.assetsImagesJaket1,
    Assets.assetsImagesJaket2,
    Assets.assetsImagesJaket3,
    Assets.assetsImagesJaket4,
  ];
  final List<String> size = ["S", "M", "L", "xl", "2xl"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductTopImageWidget(
                image: image,
              ),
              Padding(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text14(
                                text: "Men's Printed Pullover Hoodie",
                                textColor: AppColors.graycolor,
                              ),
                              Text18(text: name),
                            ],
                          ),
                        ),
                        // const Spacer(),

                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text14(
                              text: "price",
                              textColor: AppColors.graycolor,
                            ),
                            Text18(text: "$price"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ProductImagesListWidget(
                      productimages: productimages,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ProductSizeWidget(
                      size: size,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const ProductDescriptionWidget(),
                    const ProductReviewWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text16(
                              text: "Total Price",
                              weight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text14(
                              text: "with VAT,SD",
                              textColor: AppColors.graycolor,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text16(text: "\$125", weight: FontWeight.w400)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20.sp),
        child: const CustomButton(text: "Add to cart "),
      )),
    );
  }
}
