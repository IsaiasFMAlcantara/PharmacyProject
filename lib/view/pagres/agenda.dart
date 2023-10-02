import 'package:coworking/custom/customText.dart';
import 'package:coworking/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:coworking/back/data.dart';

import 'datelhes.dart';

class PageAgendaPharmacy extends StatefulWidget {
  const PageAgendaPharmacy({super.key});

  @override
  State<PageAgendaPharmacy> createState() => _PageAgendaPharmacyState();
}

class _PageAgendaPharmacyState extends State<PageAgendaPharmacy> {
  DateTime dataAtual = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: CustomText(title: 'Agenda Semanal de horas das farmacias'),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListView.builder(
                itemCount: WeekDay.length,
                itemBuilder: (context, index) {
                  final listweekday = WeekDay[index];
                  final isExpanded = listweekday['expandido'];
                  final pharmacylist = listpharmacy
                      .where((produto) =>
                          produto['dayweek'] == listweekday['dayweek'])
                      .toList();
                  return Card(
                    color: ColorsPharmacy.buttomlistColor,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            '${listweekday['dayweek']}',
                            style:
                                TextStyle(color: ColorsPharmacy.textlistColor),
                          ),
                          onTap: () {
                            setState(() {
                              listweekday['expandido'] = !isExpanded;
                            });
                          },
                        ),
                        if (isExpanded)
                          Container(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: pharmacylist.length,
                              itemBuilder: (context, subIndex) {
                                final subpharmacylist = pharmacylist[subIndex];
                                return Container(
                                  width: 150,
                                  child: Card(
                                    child: ListTile(
                                      title: Text(subpharmacylist['Farmacia']),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => PageDatails(pharmacy: subpharmacylist['idFarmacia']),
                                            ),
                                          );
                                        }
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                      ],
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
