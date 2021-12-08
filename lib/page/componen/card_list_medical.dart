import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uts_klinik/page/detail_transaksi_page.dart';
import 'package:uts_klinik/page/widget/custom_text.dart';

class CardListMedikal extends StatefulWidget {
  const CardListMedikal({Key? key}) : super(key: key);

  @override
  State<CardListMedikal> createState() => _CardListMedikalState();
}

class _CardListMedikalState extends State<CardListMedikal> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const DetailTransaksiPage());
      },
      child: Container(
        margin: EdgeInsets.all(0.5.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[300]!),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/icons/ic_health.svg',
                      height: 5.h,
                      width: 5.h,
                      color: Theme.of(context).primaryColor),
                  SizedBox(
                    width: 2.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "TRN-20121029",
                        textSize: 15,
                        colors: Colors.grey[600],
                        fontWeight: FontWeight.w600,
                      ),
                      const CustomText(
                        text: "Iqbal Firmansyah",
                        textSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          const CustomText(
                            text: "Laki-laki",
                            textSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 0.5.h, right: 0.5.h),
                            height: 1.h,
                            width: 2.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).primaryColor),
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CustomText(
                                text: "20",
                                textSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              const CustomText(
                                text: " Thn",
                                textSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).primaryColor),
                child: Padding(
                  padding: EdgeInsets.all(0.5.h),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 2.h,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
