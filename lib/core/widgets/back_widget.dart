import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extensions.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({super.key, this.isProduct = false});
  final bool isProduct;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isProduct ? Colors.white : const Color(0xffF5F6FA),
        ),
        padding: EdgeInsets.all(10.sp),
        child: const Icon(Icons.arrow_back_outlined),
      ),
    );
  }
}
