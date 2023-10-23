import 'package:coworking/custom/customText.dart';
import 'package:flutter/material.dart';

class pageHomeScreen extends StatefulWidget {
  const pageHomeScreen({super.key});

  @override
  State<pageHomeScreen> createState() => _pageHomeScreenState();
}

class _pageHomeScreenState extends State<pageHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/projeto-coworking.appspot.com/o/imagem_mapa.png?alt=media&token=de17cc97-d3fd-4f83-897d-6da69f2157f0&_gl=1*10uyvb1*_ga*NjY1ODYyNzEwLjE2OTIyODQ0MjY.*_ga_CW55HF8NVT*MTY5ODA2MzM4NC4yMC4xLjE2OTgwNjM0MDkuMzUuMC4w',
                  width: 400,
                  height: 600,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(title: 'QUAL FRMÁCIA VAI CUIDAR DE VOCÊ HOJE?')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
