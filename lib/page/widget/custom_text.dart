import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomText extends StatelessWidget {
  final Color? colors;
  final TextAlign? textAlign;
  final String text;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;
  final double textSize;
  const CustomText({Key? key, required this.text, required this.textSize, this.colors, this.fontWeight,this.decoration,this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: colors ?? const Color(0xde000000),
            fontWeight: fontWeight ?? FontWeight.w400,
            decoration: decoration,
            fontFamily: "Nunito",
            fontStyle: FontStyle.normal,
            fontSize: textSize.sp),
        textAlign:textAlign ?? TextAlign.left);
  }
}


