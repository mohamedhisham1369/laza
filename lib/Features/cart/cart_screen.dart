import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/theming/assets.dart';
import 'package:laza/core/theming/colors.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_texts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text18(text: "Cart"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            children: [
              ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFEFEFE),
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: const Offset(0, 3))
                        ]),
                    padding: EdgeInsets.all(10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 120.h,
                            child: Image.asset(
                              Assets.assetsImagesJaket1,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        25.w.width(),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text18(
                                text: "Men's Tie-Dye T-Shirt Nike Sportswear",
                                maxLines: 2,
                                overFlow: TextOverflow.ellipsis,
                              ),
                              5.h.height(),
                              Text16(
                                text: "\$45 (-\$4.00 Tax)",
                                textColor: AppColors.graycolor,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Container(
                                          padding: EdgeInsets.all(3.sp),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                  color:
                                                      const Color(0xffDEDEDE))),
                                          child: const Icon(
                                            Icons.arrow_drop_down,
                                            color: AppColors.graycolor,
                                          ),
                                        ),
                                      ),
                                      Text14(text: "1"),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Container(
                                          padding: EdgeInsets.all(3.sp),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                  color:
                                                      const Color(0xffDEDEDE))),
                                          child: const Icon(
                                            Icons.arrow_drop_up,
                                            color: AppColors.graycolor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Container(
                                      padding: EdgeInsets.all(3.sp),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xffDEDEDE))),
                                      child: const Icon(
                                        Icons.delete_outline_sharp,
                                        color: Color(0xff8F959E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    20.h.height(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          children: [
            
            const CustomButton(text: "Check out"),
          ],
        ),
      )),
    );
  }
}
