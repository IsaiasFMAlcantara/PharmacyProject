import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:coworking/custom/appbarCustom.dart';
import 'package:coworking/custom/drawerCustom.dart';

class PageDatails extends StatefulWidget {
  final int pharmacy;

  const PageDatails({required this.pharmacy});

  @override
  _PageDatailsState createState() => _PageDatailsState();
}

class _PageDatailsState extends State<PageDatails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '${widget.pharmacy}'),
      drawer: CustomDrawer(),
      body: Column(
        children: [],
      ),
    );
  }
}
