import 'package:flutter/material.dart';

class CustomSpacer extends StatelessWidget {
  double? h, w;
  CustomSpacer({this.h, this.w, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: w, height: h);
  }
}
