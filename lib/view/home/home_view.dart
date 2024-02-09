import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technupur_interview_test/resources/assets_manager.dart';
import 'package:technupur_interview_test/view/home/components/header.dart';

import '../components/custom_spacer.dart';
import 'components/categories.dart';
import 'components/sub_categories.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomSpacer(
            h: 41.h,
          ),
          Header(),
          CustomSpacer(
            h: 12.h,
          ),
          const Divider(
            height: 20,
            thickness: 1,
            color: Color(0xFFD9E4E8),
          ),
          Categories(
            selectedCategoryIndex: 0,
            categoriesList: const [
              "ALL",
              "Hats",
              "Hats",
              "Hats",
              "Hats",
              "Hats",
              "Hats"
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
            color: Color(0xFFD9E4E8),
          ),
          CustomSpacer(
            h: 20.h,
          ),
          SubCategories(
            selectedCategoryIndex: 0,
            categoriesList: [
              AssetsManager.dummyImg,
              AssetsManager.dummyImg,
              AssetsManager.dummyImg,
              AssetsManager.dummyImg,
              AssetsManager.dummyImg,
              AssetsManager.dummyImg,
            ],
          ),
          CustomSpacer(
            h: 7.h,
          ),
          ListTile(
            leading: RichText(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              text: TextSpan(children: [
                TextSpan(
                    text: "Products ",
                    style: TextStyle(
                      color: Colors.black, // Set the border color,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    )),
                TextSpan(
                  text: "(Beg)",
                  style: TextStyle(
                    color: Color(0xffB9202B),
                    fontSize: 7.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ]),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xffB9202B),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10.sp,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
