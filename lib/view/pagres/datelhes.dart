import 'package:flutter/material.dart';
import 'package:coworking/custom/appbarCustom.dart';
import 'package:coworking/custom/drawerCustom.dart';
import 'package:coworking/back/data.dart';

class PageDatails extends StatefulWidget {
  final int pharmacy;

  const PageDatails({required this.pharmacy});

  @override
  _PageDatailsState createState() => _PageDatailsState();
}

class _PageDatailsState extends State<PageDatails> {
  @override
  Widget build(BuildContext context) {
    var dadosatual = listpharmacy
        .where((element) => element['idFarmacia'] == widget.pharmacy)
        .map((element) => element.cast<String, dynamic>())
        .toList();

    return Scaffold(
      appBar: CustomAppBar(title: "${dadosatual[0]['Farmacia']}"),
      drawer: CustomDrawer(),
      body: Column(
        children: [],
      ),
    );
  }
}
