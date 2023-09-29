import 'package:coworking/custom/customText.dart';
import 'package:coworking/utils/colors.dart';
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
                    //'https://images.freeimages.com/clg/istock/previews/1057/105788051-pharmacist-woman-with-medicine-at-counter-in-pharmacy.jpg'),
                    'https://i.blogs.es/635f55/maps/1366_2000.jpg'),
                SizedBox(
                  height: 20,
                ),
                CustomText(title: 'Qual farmácia vai cuidar de você hoje?')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
