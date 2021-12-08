import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uts_klinik/page/widget/custom_text.dart';

class CardListPoli extends StatefulWidget {
  const CardListPoli({Key? key}) : super(key: key);

  @override
  State<CardListPoli> createState() => _CardListPoliState();
}

class _CardListPoliState extends State<CardListPoli> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.w, top: 2.h),
      child: GestureDetector(
          onTap: () {},
          child: Container(
              width: 28.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey[300]!),
                  color: Theme.of(context).primaryColor),
              child: Padding(
                padding: EdgeInsets.all(1.5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic_health.svg',
                      height: 8.h,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const CustomText(
                      text: "UMUM",
                      textSize: 18,
                      colors: Colors.white,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ))),
    );
  }
}
