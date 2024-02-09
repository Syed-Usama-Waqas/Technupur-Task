import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technupur_interview_test/view/components/custom_spacer.dart';

class SubCategories extends StatefulWidget {
  List<dynamic> categoriesList;
  int selectedCategoryIndex;
  SubCategories({
    required this.selectedCategoryIndex,
    required this.categoriesList,
    super.key,
  });

  @override
  State<SubCategories> createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 97.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoriesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 56.h,
                width: 56.h,
                margin: EdgeInsets.only(right: 9.4.w),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        height: 56.h,
                        width: 56.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: widget.selectedCategoryIndex == index
                                ? const Color(0xFFB9202B)
                                : const Color(
                                    0xFF89999F), // Set the border color
                            width: 2.w, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(
                              100), // Set the border radius
                        ),
                        child: Image.asset(
                          widget.categoriesList[index],
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 14.h,
                        width: 14.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: widget.selectedCategoryIndex == index
                                ? const Color(0xFFB9202B)
                                : const Color(
                                    0xFF89999F), // Set the border color
                            width: 2.w, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(
                              100), // Set the border radius
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "5",
                          style: TextStyle(
                            color: widget.selectedCategoryIndex == index
                                ? Colors.black
                                : const Color(0xFF89999F), // Set t
                            fontSize: 5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomSpacer(h: 3.47.h),
              Text(
                "Bags",
                style: TextStyle(
                  color: widget.selectedCategoryIndex == index
                      ? Colors.black
                      : const Color(0xFF89999F), // Set the border color,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
