import 'package:bittaqwa_app/presentation/widgets/time.dart';
import 'package:bittaqwa_app/utils/color.dart';
import 'package:flutter/material.dart';

class JadwalSholatScreen extends StatelessWidget {
  const JadwalSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: Text(
          "Jadwal Sholat",
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
        color: Color(0xFFE4F2FD),
        child: Stack(
          children: [
            Image.asset("assets/images/bg_header_jadwal_sholat.png"),
            Column(
              children: [
                SizedBox(height: 40,),
                Text(
                  "Senin, 18 Nov 2024",
                  style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      fontSize: 24,
                      color: ColorApp.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: ColorApp.primary,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Karanganyar, Jawa Tenggah",
                      style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        color: ColorApp.white,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ],
                ),
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.all(24),
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: ColorApp.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Time(name: "subuh", time:"04.00" ,),
                      SizedBox(height: 16,),
                      Divider(
                        color: Color(0xffCBE5DD),
                      ),
                      Time(name: "subuh", time:"04.00" ,),
                      SizedBox(height: 16,),
                      Divider(
                        color: Color(0xffCBE5DD),
                      ),
                      Time(name: "subuh", time:"04.00" ,),
                      SizedBox(height: 16,),
                      Divider(
                        color: Color(0xffCBE5DD),
                      ),
                      Time(name: "subuh", time:"04.00" ,),
                      SizedBox(height: 16,),
                      Divider(
                        color: Color(0xffCBE5DD),
                      ),
                      Time(name: "subuh", time:"04.00" ,),
                      SizedBox(height: 16,),
                      Divider(
                        color: Color(0xffCBE5DD),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
