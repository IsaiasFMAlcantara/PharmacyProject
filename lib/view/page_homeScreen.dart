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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [

                  Image.asset('imagens/imagem_mapa.png',height: 600,),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(title: 'QUAL FRMÁCIA VAI CUIDAR DE VOCÊ HOJE?')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
