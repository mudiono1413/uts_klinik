import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uts_klinik/page/widget/custom_text.dart';

class CardListTrnObatPasien extends StatefulWidget {
  const CardListTrnObatPasien({Key? key}) : super(key: key);

  @override
  State<CardListTrnObatPasien> createState() => _CardListTrnObatPasienState();
}

class _CardListTrnObatPasienState extends State<CardListTrnObatPasien> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(1.h),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[100]),
              child: Padding(
                padding: EdgeInsets.all(0.8.h),
                child: SvgPicture.asset('assets/images/medicine.svg',
                    height: 3.h,
                    width: 3.h,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            SizedBox(
              width: 70.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Paracetamol",
                    textSize: 16,
                    fontWeight: FontWeight.w600,
                    colors: Colors.grey,
                  ),
                  const CustomText(
                      text: "Paracetamol",
                      textSize: 18,
                      fontWeight: FontWeight.w600),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor)),
                              child: Icon(
                                Icons.add,
                                color: Theme.of(context).primaryColor,
                                size: 1.5.h,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          const CustomText(
                            text: "1",
                            textSize: 16,
                            fontWeight: FontWeight.w600,
                            colors: Colors.grey,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor)),
                              child: Icon(
                                Icons.remove,
                                color: Theme.of(context).primaryColor,
                                size: 1.5.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const CustomText(
                          text: "RP. 25.000",
                          textSize: 17,
                          fontWeight: FontWeight.w600),
                    ],
                  ),
                  const Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: CustomText(
                      text: "Hapus",
                      textSize: 16,
                      fontWeight: FontWeight.bold,
                      colors: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
