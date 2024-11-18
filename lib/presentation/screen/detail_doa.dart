import 'package:bittaqwa_app/utils/color.dart';
import 'package:flutter/material.dart';

class DetailDoa extends StatelessWidget {
  final String title;
  final String arabicText;
  final String translation;
  final String reference;
  const DetailDoa({super.key, required this.title, required this.arabicText, required this.translation, required this.reference});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: const Text(
          "Doa-Doa",
          style: TextStyle(
            fontFamily: "PoppinsMedium",
            color: ColorApp.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: ColorApp.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_detail_doa.png"),
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: ColorApp.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 2
                  ),
                ]
                ),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontFamily: "PoppinsBold",
                  fontSize: 24,
                  color: ColorApp.text,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  arabicText,
                style: TextStyle(
                  fontFamily: "PoppinsRegular",
                  fontSize: 20,
                  color: ColorApp.text
                ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(translation,
                style: TextStyle(
                  fontFamily: "PoppinsRegular",
                  fontSize: 16,
                  color: Colors.blue[300],
                ),
                textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(reference,
                style: TextStyle(
                  fontFamily: "PoppinsRegular",
                  fontSize: 12,
                  color: Colors.grey
                ),
                textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
