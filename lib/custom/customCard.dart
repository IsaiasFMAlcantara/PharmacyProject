import 'package:flutter/material.dart';
import 'package:coworking/back/data.dart';

import '../view/pagres/datelhes.dart';

class CustomCard extends StatefulWidget {
  final int idpharmacy;
  const CustomCard({required this.idpharmacy});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    var dadosatual = listpharmacy
        .where((element) => element['idFarmacia'] == widget.idpharmacy)
        .map((element) => element.cast<String, dynamic>())
        .toList();
    return Container(
      height: 200,
      width: 150,
      child: Card(
        child: ListTile(
            title: Text('${dadosatual[0]['Farmacia']}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageDatails(pharmacy: widget.idpharmacy),
                ),
              );
            }),
      ),
    );
  }
}
