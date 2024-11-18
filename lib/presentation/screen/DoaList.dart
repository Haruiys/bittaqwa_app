import 'package:bittaqwa_app/data/doa_data.dart';
import 'package:bittaqwa_app/presentation/screen/detail_doa.dart';
import 'package:bittaqwa_app/utils/color.dart';
import 'package:flutter/material.dart';

class DoaListScreen extends StatelessWidget {
  final String category;
  const DoaListScreen({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> doaList = getDoaList(category);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: Text(
          "List Doa $category",
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
      body: ListView.builder(
        itemCount: doaList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 12, left: 16, right: 16),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: ColorApp.white),
            child: ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailDoa(
                      title: doaList[index]['title']!,
                      arabicText: doaList[index]['arabicText']!,
                      translation: doaList[index]['translation']!,
                      reference: doaList[index]['referance']!,
                    ),
                  )),
              leading: Image.asset(
                "${doaList[index]["image"]}",
              ),
              title: Text(
                "${doaList[index]["title"]}",
                style: TextStyle(fontFamily: "PoppinsMedium", fontSize: 20),
              ),
            ),
          );
        },
      ),
    );
  }
}
