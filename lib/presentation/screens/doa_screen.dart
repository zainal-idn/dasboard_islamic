import 'package:bittaqwa_new/presentation/screens/doa_list.dart';
import 'package:bittaqwa_new/presentation/widgets/carddoa.dart';
import 'package:bittaqwa_new/utils/color.dart';
import 'package:flutter/material.dart';

class DoaScreen extends StatelessWidget {
  
   DoaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: Text("Doa-Doa",style: TextStyle(fontFamily: "PoppinsMedium",
        color: Colors.white
        ),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon (Icons.arrow_back_ios_new_outlined, color: Colors.white,
        ),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/bg_header_dashboard_morning.png"
          ,fit: BoxFit.cover,
          ),
          Expanded(child: Padding(
            padding:  EdgeInsets.all(12),
            child: GridView.count(
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              crossAxisCount: 3,
            children: [
              CardDoa(imageUrl: "assets/images/ic_menu_doa.png", title: "Doa-Doa",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: "Pagi & Malam",),
                ));
              },
              ),

              CardDoa(imageUrl: "assets/images/ic_doa_rumah.png", title: "Rumah",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: "Rumah",),
                ));
              },
              ),

              CardDoa(imageUrl: "assets/images/ic_doa_makanan_minuman.png", title: "Makan",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: "Makanan & Minuman",),
                ));
              },
              ),

              CardDoa(imageUrl: "assets/images/ic_doa_perjalanan.png", title: "Perjalanan",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: "Perjalanan",),
                ));
              },
              ),

              CardDoa(imageUrl: "assets/images/ic_doa_sholat.png", title: "Sholat",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: "Sholat",),
                ));
              },
              ),

              CardDoa(imageUrl: "assets/images/ic_doa_etika_baik.png", title: "Etika Baik",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: "Etika Baik",),
                ));
              },
              ),
            ],
            ),
          )
          )
        ],
      ),
    );
  }
}
