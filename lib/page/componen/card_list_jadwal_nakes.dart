import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uts_klinik/page/widget/custom_text.dart';

class CardListJadwalnakes extends StatelessWidget {
  const CardListJadwalnakes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.0.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(1.5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/dokter.png',
                    height: 5.h,
                    width: 5.h,
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: "Dr. Hendrawan",
                        textSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      const CustomText(
                        text: "UMUM",
                        textSize: 16,
                        colors: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    size: 2.h,
                    color: Colors.blue[500],
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  const CustomText(
                    text: "Rabu ",
                    textSize: 17,
                    colors: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                  const CustomText(
                    text: " Jam ",
                    textSize: 17,
                    colors: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  const CustomText(
                    text: "08:00 - 21:00",
                    textSize: 17,
                    colors: Colors.grey,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
