

import 'package:flutter/material.dart';

class CardDoa extends StatelessWidget {
  final String  imageUrl;
  final String  title;
  final VoidCallback? onTap;
  const CardDoa({super.key, required this.imageUrl, required this.title,
  this.onTap,
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1,
              spreadRadius: 3,
            )
          ]
        ),
        child: Column(
          children: [
            Expanded(child: Image.asset(imageUrl)),
            SizedBox(height: 7),
            Text(title,style: TextStyle(fontFamily: "PoppinsMedium"),)
          ],
        ),
      ),
    );
  }
}