import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technupur_interview_test/resources/assets_manager.dart';
import 'package:technupur_interview_test/view/components/custom_spacer.dart';

class Header extends StatelessWidget {
  Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomSpacer(
          w: 20.w,
        ),
        SvgPicture.asset(
          AssetsManager.burgerMenuSvg,
          height: 37.h,
          width: 37.w,
        ),
        Expanded(
          child: SvgPicture.asset(
            AssetsManager.onlineShopLogoSvg,
            height: 30.h,
            width: 130.75.w,
          ),
        ),
        SvgPicture.asset(
          AssetsManager.searchSvg,
          height: 37.h,
          width: 37.w,
        ),
        CustomSpacer(
          w: 20.w,
        ),
      ],
    );
  }
}
