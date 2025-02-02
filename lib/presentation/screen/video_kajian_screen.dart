import 'package:bittaqwa_app/data/data_video.dart';
import 'package:bittaqwa_app/presentation/screen/detail_video_kajian.dart';
import 'package:bittaqwa_app/utils/color.dart';
import 'package:flutter/material.dart';

class VideoKajianScreen extends StatelessWidget {
  const VideoKajianScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: Text(
          "Video Kajian",
          style: TextStyle(
            fontFamily: "PoppinsMedium",
            color: ColorApp.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: ColorApp.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailVideoKajian(
                      account: videos[index]['account']!,
                      title: videos[index]['title']!,
                      ustadz: videos[index]['ustadz']!,
                      url: videos[index]['url']!,
                      description: videos[index]['description']!);
                },
              ));
            },
            child: Card(
              margin: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        videos[index]['thumbnail']!,
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      videos[index]['account']!,
                      style: TextStyle(
                          fontFamily: "PoppinsRegular", color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      videos[index]['ustadz']!,
                      style: TextStyle(
                          fontFamily: "PoppinsRegular",
                          color: ColorApp.primary),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      videos[index]['title']!,
                      style: TextStyle(
                          fontFamily: "PoppinsSemiBold",
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
