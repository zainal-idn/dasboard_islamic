import 'package:bittaqwa_new/utils/color.dart';
import 'package:flutter/material.dart';

class DetailDoa extends StatelessWidget {
  final String title;
  final String arabicteks;
  final String terjemahaan;
  final String reference;
  const DetailDoa({
    super.key,
    required this.title,
    required this.arabicteks,
    required this.terjemahaan,
    required this.reference,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: Text(
          title,
          style: TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg_detail_doa.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(33),
            padding: EdgeInsets.all(23),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorApp.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[200]!, spreadRadius: 5, blurRadius: 2)
                ]),
            child: Column(
              children: [
                Text(title,
                textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 24,
                        color: ColorApp.text)),
                SizedBox(
                  height: 16,
                ),
                Text(
                  arabicteks,
                  style: TextStyle(
                    fontFamily: "PoppinsRegular",
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  terjemahaan,
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      fontSize: 16,
                      color: const Color.fromARGB(255, 121, 182, 231)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  reference,
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      fontSize: 13,
                      color: const Color.fromARGB(255, 107, 107, 107)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
