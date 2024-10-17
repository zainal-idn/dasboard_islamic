import 'package:bittaqwa_new/data/doa_data.dart';
import 'package:bittaqwa_new/presentation/screens/detail_doa.dart';
import 'package:bittaqwa_new/utils/color.dart';
import 'package:flutter/material.dart';

class DoaListScreen extends StatelessWidget {
  final String category; 
  const DoaListScreen({super.key,
  required this.category,});

  @override
  Widget build(BuildContext context) {
     
     final List<Map<String,String>> doa_list = getDoaList(category);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 240, 255),
     appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: Text("List Doa $category",
        style: TextStyle(fontFamily: "PoppinsMedium",
        color: Colors.white
        ),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon (Icons.arrow_back_ios_new_outlined, color: const Color.fromARGB(255, 255, 255, 255),
        ),
        ),
      ), 
      body: ListView.builder(
        itemCount: doa_list.length,
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: 12, left: 16, right: 16),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDoa(
              title: doa_list[index]["title"]!,
              arabicteks: doa_list[index]["arabicText"]!,
              terjemahaan: doa_list[index]["translation"]!,
              reference: doa_list[index]["reference"]!,
            ),)),
            leading: Image.asset("${doa_list[index]["image"]}",
            ),
          title: Text("${doa_list[index]["title"]}",style: TextStyle(fontFamily: "PoppinsMesdium", fontSize: 24),),
          ),
        );
      },),
    );
  }
}