import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technupur_interview_test/resources/assets_manager.dart';
import 'package:technupur_interview_test/view/home/home_view.dart';

import '../components/custom_spacer.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            AssetsManager.onBoardingBackgroundSvg,
            height: 298.h,
            width: 360.w,
            fit: BoxFit.fill,
          ),
          SvgPicture.asset(
            AssetsManager.logoSvg,
            height: 165.92.h,
            width: 199.6.w,
          ),
          CustomSpacer(h: 277.h),
          SvgPicture.asset(
            AssetsManager.poweredLogoSvg,
            height: 25.39.h,
            width: 200.w,
          ),
          CustomSpacer(
            h: 33.h,
          ),
        ],
      ),
    );
  }
}
