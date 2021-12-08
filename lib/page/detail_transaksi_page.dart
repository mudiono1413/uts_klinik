import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uts_klinik/page/widget/custom_text.dart';

import 'componen/card_list_trn_obat_pasien.dart';
import 'widget/custom_button.dart';

class DetailTransaksiPage extends StatefulWidget {
  const DetailTransaksiPage({Key? key}) : super(key: key);

  @override
  _DetailTransaksiPageState createState() => _DetailTransaksiPageState();
}

class _DetailTransaksiPageState extends State<DetailTransaksiPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget _TrnMedis() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "TRN-202109989812",
            textSize: 17,
            colors: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
          Divider(
            thickness: 0.1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Status Medikal",
                    textSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 0.2.h,
                  ),
                  CustomText(
                    text: "CREATED",
                    textSize: 17,
                    colors: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 1.0.h, bottom: 1.h, left: 1.5.h, right: 1.5.h),
                  child: Center(
                    child: CustomText(
                      text: "UMUM",
                      textSize: 17,
                      fontWeight: FontWeight.bold,
                      colors: Colors.grey[700],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      );
    }

    // ignore: non_constant_identifier_names
    Widget _DetailPasien() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Iqbal Firmansyah",
            textSize: 17,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 0.2.h,
          ),
          Row(
            children: [
              const CustomText(
                text: "Laki-laki",
                textSize: 17,
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
                    textSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  const CustomText(
                    text: " Thn",
                    textSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          CustomText(
            text: "Waktu",
            textSize: 17,
            fontWeight: FontWeight.w600,
            colors: Colors.grey[600],
          ),
          SizedBox(
            height: 0.2.h,
          ),
          Row(
            children: [
              CustomText(
                text: "Jum'at ",
                textSize: 17,
                colors: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: " , ",
                textSize: 17,
                colors: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: "Des",
                textSize: 17,
                colors: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: "  |  ",
                textSize: 17,
                colors: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: "09:09 WIB",
                textSize: 17,
                colors: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      );
    }

    // ignore: non_constant_identifier_names
    Widget _Klinik() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Klinik",
            textSize: 17,
            fontWeight: FontWeight.w600,
            colors: Colors.grey[600],
          ),
          SizedBox(
            height: 0.2.h,
          ),
          const CustomText(
            text: "KLINIK CITRA SEHAT",
            textSize: 17,
            fontWeight: FontWeight.w600,
          ),
          CustomText(
            text: "JL.BANDUNG DUA",
            textSize: 17,
            fontWeight: FontWeight.w500,
            colors: Colors.grey[600],
          ),
        ],
      );
    }

    // ignore: non_constant_identifier_names
    Widget _Dokter() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Di Periksa Oleh",
            textSize: 17,
            fontWeight: FontWeight.w600,
            colors: Colors.grey[600],
          ),
          SizedBox(
            height: 0.5.h,
          ),
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
                    text: "Dr Hendrawan",
                    textSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CustomText(
                        text: "Spesialis Poli ",
                        textSize: 16,
                        colors: Colors.grey,
                        fontWeight: FontWeight.w500,
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
            ],
          ),
        ],
      );
    }

    // ignore: non_constant_identifier_names
    Widget _DetailObat() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.0.h, bottom: 1.h),
            child: Divider(
              thickness: 0.1.h,
            ),
          ),
          CustomText(
            text: "Detail Resep Obat",
            textSize: 17,
            colors: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 0.5.h,
          ),
          const CustomText(
            text: "TRNOBT-202198237223",
            textSize: 17,
            fontWeight: FontWeight.w600,
          ),
          Divider(
            thickness: 0.1.h,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return const CardListTrnObatPasien();
              })
        ],
      );
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const CustomText(
            text: "Detail Medikal",
            textSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(1.0.h),
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Button(
                      text: "Confirm",
                      clicked: () {},
                      colors: Theme.of(context).primaryColor,
                      isLoad: false)),
              SizedBox(
                width: 2.h,
              ),
              Flexible(
                  flex: 1,
                  child: Button(
                      text: "Cancel",
                      clicked: () {},
                      colors: Colors.red[400]!,
                      isLoad: false)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TrnMedis(),
                Padding(
                  padding: EdgeInsets.only(top: 1.0.h, bottom: 1.h),
                  child: Divider(
                    thickness: 0.1.h,
                  ),
                ),
                _DetailPasien(),
                Padding(
                  padding: EdgeInsets.only(top: 1.0.h, bottom: 1.h),
                  child: Divider(
                    thickness: 0.1.h,
                  ),
                ),
                _Klinik(),
                Padding(
                  padding: EdgeInsets.only(top: 1.0.h, bottom: 1.h),
                  child: Divider(
                    thickness: 0.1.h,
                  ),
                ),
                _Dokter(),

                // Visibility(
                //     visible:
                //       widget.trnMedis.statusMedis == "Completed"
                //             ? true
                //             : false,
                //     child: DiagnosaFrom()),

                _DetailObat()
                // : Container()
              ],
            ),
          ),
        ));
  }
}
