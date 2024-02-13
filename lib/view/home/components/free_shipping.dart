import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technupur_interview_test/resources/assets_manager.dart';
import 'package:technupur_interview_test/view/components/custom_spacer.dart';

class FreeShipping extends StatelessWidget {
  const FreeShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 320.w,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: const Color(0xFF17A2B8),
        borderRadius: BorderRadius.circular(
          5.r,
        ),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            height: 46.h,
            width: 46.w,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F6F8),
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            child: Image.asset(
              AssetsManager.deliveryManImg,
            ),
          ),
          CustomSpacer(
            w: 13.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Free Shipping Over \$0",
                  style: TextStyle(
                    color: Colors.white, // Set the border color,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Free returns and exchange",
                  style: TextStyle(
                    color: Colors.white, // Set the border color,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          CustomSpacer(
            w: 18.w,
          ),
          SvgPicture.asset(
            AssetsManager.phoneSvg,
            height: 40.h,
            width: 40.w,
          ),
        ],
      ),
    );
  }
}
