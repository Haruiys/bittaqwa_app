import 'package:bittaqwa_app/utils/color.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        height: 250,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/bg_header_dashboard_morning.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorApp.white),
                child: const Text(
                  "Assalamualikum Fulan",
                  style: TextStyle(fontFamily: "PoppinsRegular"),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Subuh",
              style: TextStyle(fontFamily: "PoppinsMedium"),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "04.59",
              style: TextStyle(fontFamily: "PoppinsBold", fontSize: 36),
            ),
            const SizedBox(
              height: 4,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: ColorApp.red,
                  size: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text("Berjo,Karanganyar")
              ],
            )
          ],
        ),
      );
    }

    Widget CardMenus() {
      return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: ColorApp.primary),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/doa');
                },
                child: Column(
                  children: [
                    Image.asset("assets/images/ic_menu_doa.png"),
                    const Text(
                      "Doa-Doa",
                      style: TextStyle(
                          fontFamily: "PoppinsSemiBold",
                          fontSize: 14,
                          color: ColorApp.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/zakat');
                },
                child: Column(
                  children: [
                    Image.asset("assets/images/ic_menu_zakat.png"),
                    const Text(
                      "Zakad",
                      style: TextStyle(
                          fontFamily: "PoppinsSemiBold",
                          fontSize: 14,
                          color: ColorApp.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/jadwal-sholat');
                },
                child: Column(
                  children: [
                    Image.asset("assets/images/ic_menu_jadwal_sholat.png"),
                    const Text(
                      "Jadwal Sholat",
                      style: TextStyle(
                          fontFamily: "PoppinsSemiBold",
                          fontSize: 14,
                          color: ColorApp.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Column(
                children: [
                  Image.asset("assets/images/ic_menu_video_kajian.png"),
                  const Text(
                    "video kajian",
                    style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 14,
                        color: ColorApp.white),
                  ),
                ],
              ),
              const SizedBox(
                width: 14,
              ),
            ],
          ),
        ),
      );
    }

    Widget Inspiration() {
      return Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
           child:  Text(
              "Inspiration",
              style: TextStyle(fontFamily: "PoppinsSemiBold",
              fontSize: 15
              ),
            ),
            ),
            const SizedBox(height: 8,),
            Image.asset("assets/images/img_inspiration_2.jpeg"),
            const SizedBox(height: 8,),
            Image.asset("assets/images/img_inspiration_3.jpeg"),
            const SizedBox(height: 8,),
            Image.asset("assets/images/img_inspiration_4.jpeg"),
            const SizedBox(height: 8,),
            Image.asset("assets/images/img_inspiration_5.jpeg"),
            const SizedBox(height: 8,),
            Image.asset("assets/images/img_inspiration_6.jpeg"),
            const SizedBox(height: 8,),
            Image.asset("assets/images/img_inspiration.png"),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: ColorApp.white,
      body: ListView(
        children: [Header(), CardMenus(), Inspiration()],
      ),
    );
  }
}
