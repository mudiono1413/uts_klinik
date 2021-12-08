import 'package:flutter/material.dart';

import 'componen/card_list_medical.dart';
import 'widget/custom_text.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({Key? key}) : super(key: key);

  @override
  _TransaksiPageState createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const CustomText(
            text: "Transaksi",
            textSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return const CardListMedikal();
            }));
  }
}
