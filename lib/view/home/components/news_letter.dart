import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technupur_interview_test/resources/assets_manager.dart';
import 'package:technupur_interview_test/view/components/custom_spacer.dart';

class NewsLetter extends StatelessWidget {
  const NewsLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            5.r,
          ),
        ),
        alignment: Alignment.center,
        child: Stack(
          children: [
            SvgPicture.asset(
              AssetsManager.onBoardingBackgroundSvg,
              // height: 298.h,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomSpacer(h: 40.h),
                Center(
                  child: Text(
                    "GRAB OUR NEWSLETTER",
                    style: TextStyle(
                      color: Colors.black, // Set the border color,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Get the latest fashion trend on your inbox!",
                    style: TextStyle(
                      color: Colors.black, // Set the border color,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                CustomSpacer(h: 13.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter Your Email",
                      hintStyle: TextStyle(
                        color: const Color(0xFF89999F), // Set the border color,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
