import 'package:coworking/custom/customText.dart';
import 'package:coworking/view/pagres/agenda.dart';
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
      appBar: CustomAppBar(title: "Detalhes Farmácia"),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            CustomText(title: '${dadosatual[0]['Farmacia']}'),
            Text('Opções de serviço: ${dadosatual[0]['servico']}'),
            Text('Localizado em: ${dadosatual[0]['Localizado']}'),
            Text(
                'Endereço: ${dadosatual[0]['Endereço']['rua']}, ${dadosatual[0]['Endereço']['numero']}, ${dadosatual[0]['Endereço']['bairro']}, ${dadosatual[0]['Endereço']['cidade']}'),
            Text('Horas: ${dadosatual[0]['Horas']}'),
            Text('Telefone: ${dadosatual[0]['Telefone']}'),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  child: Column(
                    children: [Icon(Icons.arrow_back), Text('Voltar')],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [Icon(Icons.map_outlined), Text('Rotas')],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
