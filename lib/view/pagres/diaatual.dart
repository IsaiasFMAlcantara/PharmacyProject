import 'package:coworking/custom/customCard.dart';
import 'package:coworking/custom/customText.dart';
import 'package:flutter/material.dart';
import 'package:coworking/back/data.dart';
import 'datelhes.dart';

class DiaAtual extends StatefulWidget {
  const DiaAtual({Key? key}) : super(key: key);

  @override
  State<DiaAtual> createState() => _DiaAtualState();
}

class _DiaAtualState extends State<DiaAtual> {
  DateTime dataAtual = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var dadosatual = listpharmacy
        .where((element) => element['iddayweek'] == dataAtual.weekday);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          CustomText(title: 'FARMÁCIA DE PLANTÃO HOJE',),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: dadosatual.length,
                itemBuilder: (context, index) {
                  final idpharmacy = dadosatual.toList()[index]["idFarmacia"];
                  return CustomCard(idpharmacy: idpharmacy);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
