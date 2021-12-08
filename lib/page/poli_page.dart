import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uts_klinik/page/widget/custom_button.dart';
import 'package:uts_klinik/page/widget/custom_text.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);

  @override
  _PoliPageState createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(2.0.h),
        child: Button(
            text: "Simpan",
            clicked: () {},
            colors: Theme.of(context).primaryColor,
            isLoad: false),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 6.5.h, left: 2.h, right: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
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
                GestureDetector(
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
                                'assets/icons/ic_tooth.svg',
                                height: 8.h,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              const CustomText(
                                text: "GIGI",
                                textSize: 18,
                                colors: Colors.white,
                                fontWeight: FontWeight.w600,
                              )
                            ],
                          ),
                        ))),
                GestureDetector(
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
                                'assets/icons/ic_pregnant.svg',
                                height: 8.h,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              const CustomText(
                                text: "KIA",
                                textSize: 18,
                                colors: Colors.white,
                                fontWeight: FontWeight.w600,
                              )
                            ],
                          ),
                        )))
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            TextFormField(
              textCapitalization: TextCapitalization.characters,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Nomor Rekam Medis Tidak Boleh Kosong!';
                }
              },
              onFieldSubmitted: (value) {},
              onSaved: (terms) {},
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  hintText: "NOMOR REKAM MEDIS",
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: "Nunito"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            const Divider(),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Riwayat Pasien",
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Riwayat Obstetrik",
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Rencana Persalinan",
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 2.h),
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "No Identitas",
                      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "No rekam medis",
                      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nama pasien",
                      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Jenis kelamin",
                      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Tempat lahir",
                      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Alamat",
                      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Tanggal lahir",
                      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    width: 100.w,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25.0)),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: DropdownButton<String>(
                          isExpanded: true,
                          value: "UMUM",
                          // elevation: 5,
                          borderRadius: BorderRadius.circular(15),
                          underline: Container(),
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          items: <String>['BPJS', 'UMUM']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: CustomText(
                                text: value,
                                textSize: 16,
                                colors: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }).toList(),
                          hint: const CustomText(
                              text: "Pilih Penjamin", textSize: 16),
                          onChanged: (value) {}),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
