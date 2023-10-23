import 'package:coworking/custom/drawerCustom.dart';
import 'package:flutter/material.dart';
import 'package:coworking/utils/colors.dart';
import 'package:coworking/custom/appbarCustom.dart';
import 'package:coworking/back/data.dart';

import '../../custom/customText.dart';

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
      appBar: CustomAppBar(title: "Farm plantão"),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.network(
                'https://firebasestorage.googleapis.com/v0/b/projeto-coworking.appspot.com/o/5afd6932892079.56979a3b6df07.jpg?alt=media&token=ae95e3b1-9c8b-49df-af2d-5bfa3470b19d&_gl=1*1i41cz5*_ga*NjY1ODYyNzEwLjE2OTIyODQ0MjY.*_ga_CW55HF8NVT*MTY5ODA3MTEzNS4yMS4xLjE2OTgwNzEyMDAuNjAuMC4w',
                height: 300,
              ),
              SizedBox(
                height: 100,
              ),
              CustomText(
                title: 'Nome: ${dadosatual[0]['Farmacia']}',
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  boxShadow: [
                    BoxShadow(
                      color: ColorsPharmacy.buttomlistColor.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Opções de serviço: ${dadosatual[0]['servico']}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Localizado em: ${dadosatual[0]['Localizado']}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Endereço: ${dadosatual[0]['Endereço']['rua']}, ${dadosatual[0]['Endereço']['numero']}, ${dadosatual[0]['Endereço']['bairro']}, ${dadosatual[0]['Endereço']['cidade']}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Horas: ${dadosatual[0]['Horas']}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Telefone: ${dadosatual[0]['Telefone']}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [Icon(Icons.arrow_back), Text('Voltar')],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [Icon(Icons.map_outlined), Text('Rotas')],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
