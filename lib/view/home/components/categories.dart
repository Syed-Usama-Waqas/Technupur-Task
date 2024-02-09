import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatefulWidget {
  List<dynamic> categoriesList;
  int selectedCategoryIndex;
  Categories({
    required this.selectedCategoryIndex,
    required this.categoriesList,
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoriesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 32.h,
            width: 62.w,
            margin: EdgeInsets.only(right: 5.w),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    height: 28.h,
                    width: 57.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: widget.selectedCategoryIndex == index
                            ? const Color(0xFFB9202B)
                            : const Color(0xFF89999F), // Set the border color
                        width: 1.w, // Set the border width
                      ),
                      borderRadius:
                          BorderRadius.circular(3), // Set the border radius
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      widget.categoriesList[index],
                      style: TextStyle(
                        color: widget.selectedCategoryIndex == index
                            ? Colors.black
                            : const Color(0xFF89999F), // Set the border color,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
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
                            : const Color(0xFF89999F), // Set the border color
                        width: 1.w, // Set the border width
                      ),
                      borderRadius:
                          BorderRadius.circular(100), // Set the border radius
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
          );
        },
      ),
    );
  }
}
