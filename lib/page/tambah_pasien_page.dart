import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uts_klinik/page/widget/custom_button.dart';
import 'package:uts_klinik/page/widget/custom_text.dart';

class TambahPasienPage extends StatefulWidget {
  const TambahPasienPage({Key? key}) : super(key: key);

  @override
  _TambahPasienPageState createState() => _TambahPasienPageState();
}

class _TambahPasienPageState extends State<TambahPasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(2.0.h),
        child: Button(
            text: "Simpan",
            clicked: () {},
            colors: Theme.of(context).primaryColor,
            isLoad: false),
      ),
      appBar: AppBar(
        leading: BackButton(color: Colors.grey[600]),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const CustomText(
          text: "Tambah Pasien",
          textSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(2.h),
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Nomor Identitas Tidak Boleh Kosong!';
              }
            },
            onSaved: (value) {},
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'Nomor Rekam Medis Tidak Boleh Kosong!';
              }
            },
            onSaved: (value) {},
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'Nama Pasien Tidak Boleh Kosong!';
              }
            },
            onSaved: (value) {},
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'Jenis Kelamin Tidak Boleh Kosong!';
              }
            },
            onSaved: (value) {},
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'Tempat Lahir Tidak Boleh Kosong!';
              }
            },
            onSaved: (value) {},
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'Alamat Tidak Boleh Kosong!';
              }
            },
            onSaved: (value) {},
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'tanggal Lahir Tidak Boleh Kosong!';
              }
            },
            onSaved: (value) {},
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
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Nomor Handphone Tidak Boleh Kosong!';
              }
            },
            onSaved: (value) {},
            decoration: InputDecoration(
              labelText: "No Handphone",
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
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
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
                  hint: const CustomText(text: "Pilih Penjamin", textSize: 16),
                  onChanged: (value) {}),
            ),
          ),
        ],
      ),
    );
  }
}
