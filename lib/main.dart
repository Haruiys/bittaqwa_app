import 'package:bittaqwa_app/presentation/screen/dashboard.dart';
import 'package:bittaqwa_app/presentation/screen/doa_screen.dart';
import 'package:bittaqwa_app/presentation/screen/jadwal_sholat_screen.dart';
import 'package:bittaqwa_app/presentation/screen/video_kajian_screen.dart';
import 'package:bittaqwa_app/presentation/screen/zakat_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const Dashboard(),
        '/doa': (context) => const DoaScreen(),
        '/zakat': (context) =>  ZakatScreen(),
        '/jadwal-sholat':(context) =>JadwalSholatScreen(),
        '/video-kajian':(context) =>VideoKajianScreen(),
        },
    );
  }
}