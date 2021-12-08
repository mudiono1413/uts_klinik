import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uts_klinik/page/poli_page.dart';
import 'package:uts_klinik/page/tambah_pasien_page.dart';
import 'package:uts_klinik/page/transaksi_page.dart';
import 'package:uts_klinik/page/widget/custom_text.dart';

import 'componen/card_list_jadwal_nakes.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 4.w, right: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const CustomText(
                      text: "Iqbal Firmansyah",
                      textSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    // ignore: prefer_const_constructors
                    CustomText(
                      text: "Frontliner",
                      textSize: 18,
                      fontWeight: FontWeight.w600,
                      colors: Colors.grey,
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const TransaksiPage());
                    },
                    icon: Icon(
                      Icons.history_rounded,
                      size: 8.w,
                    ))
              ],
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.only(top: 2.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const TambahPasienPage());
                    },
                    child: Container(
                        width: 40.w,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF3366FF),
                                  Color(0xFF00CCFF),
                                ],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 0), // changes position of shadow
                              ),
                            ],
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).primaryColor),
                        child: Padding(
                          padding: EdgeInsets.all(1.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white),
                                child: Padding(
                                  padding: EdgeInsets.all(1.0.h),
                                  child: SvgPicture.asset(
                                    'assets/images/medical-record.svg',
                                    height: 4.h,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              const CustomText(
                                text: "Pasien baru",
                                textSize: 18,
                                colors: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              const CustomText(
                                text: "Mohon untuk mengisi data dahulu",
                                textSize: 16,
                                colors: Colors.white,
                              )
                            ],
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const PoliPage());
                    },
                    child: Container(
                        width: 40.w,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    const Offset(0, 0), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey[300]!),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.all(1.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF3366FF),
                                          Color(0xFF00CCFF),
                                        ],
                                        begin: FractionalOffset(0.0, 0.0),
                                        end: FractionalOffset(1.0, 0.0),
                                        stops: [0.0, 1.0],
                                        tileMode: TileMode.clamp),
                                    borderRadius: BorderRadius.circular(30),
                                    color: Theme.of(context).primaryColor),
                                child: Padding(
                                  padding: EdgeInsets.all(1.0.h),
                                  child: SvgPicture.asset(
                                    'assets/images/insurance.svg',
                                    height: 4.h,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              CustomText(
                                text: "Pasien terdaftar",
                                textSize: 18,
                                colors: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                              CustomText(
                                text: "Mohon untuk mengisi data antrian",
                                textSize: 16,
                                colors: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: "Jadwal Dokter",
                  textSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: "Liat Lainnya",
                  textSize: 18,
                  colors: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Flexible(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const CardListJadwalnakes();
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
