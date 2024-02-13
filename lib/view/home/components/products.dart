import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technupur_interview_test/resources/color_manager.dart';
import 'package:technupur_interview_test/view/components/custom_spacer.dart';

import '../../../resources/assets_manager.dart';

class Products extends StatefulWidget {
  List<dynamic> categoriesList;
  int selectedCategoryIndex;
  bool isFav = true;
  Products({
    required this.selectedCategoryIndex,
    required this.categoriesList,
    super.key,
  });

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoriesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 225.h,
                width: 151.w,
                margin: EdgeInsets.only(right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: ColorManager.color2,
                        borderRadius: BorderRadius.circular(
                          5.r,
                        ), // Set the border radius
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            AssetsManager.p1Img,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Positioned(
                            top: 6.h,
                            left: 6.w,
                            child: Container(
                              height: 18.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                color: Color(0xFF28A745),
                                borderRadius: BorderRadius.circular(
                                  2.r,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "-0.00%",
                                style: TextStyle(
                                  color: Colors.white, // Set the border color,
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: widget.isFav ? 6.h : 11.h,
                            right: widget.isFav ? 6.w : 11.w,
                            child: GestureDetector(
                              onTap: () {
                                if (widget.isFav == true) {
                                  setState(() {
                                    widget.isFav = false;
                                  });
                                } else {
                                  setState(() {
                                    widget.isFav = true;
                                  });
                                }
                              },
                              child: Image.asset(
                                widget.isFav
                                    ? AssetsManager.likedImg
                                    : AssetsManager.unLikedImg,
                                height: widget.isFav ? 26.h : 16.h,
                                width: widget.isFav ? 26.w : 16.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomSpacer(
                      h: 10.h,
                    ),
                    Text(
                      "Category",
                      style: TextStyle(
                        color: const Color(0xFF89999F),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomSpacer(
                      h: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$0.00",
                          style: TextStyle(
                            color: const Color(0xFF89999F),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        CustomSpacer(
                          w: 7.w,
                        ),
                        Text(
                          "\$0.00",
                          style: TextStyle(
                            color: ColorManager.color3,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    CustomSpacer(
                      h: 9.8.h,
                    ),
                    SvgPicture.asset(
                      AssetsManager.soldOutSvg,
                      height: 12.84.h,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
              CustomSpacer(h: 3.47.h),
            ],
          );
        },
      ),
    );
  }
}
