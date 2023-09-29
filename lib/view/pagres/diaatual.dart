import 'package:flutter/material.dart';
import 'package:coworking/back/data.dart';
import 'datelhes.dart';

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
    var dados;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 8),
          Text('${DateTime.now()}'),
          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: dadosatual.length,
                itemBuilder: (context, index) {
                  final idpharmacy = dadosatual.toList()[index]["idFarmacia"];
                  return Card(
                    child: ListTile(
                      title: Text('${dadosatual.toList()[index]["Farmacia"]}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageDatails(pharmacy: idpharmacy),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
