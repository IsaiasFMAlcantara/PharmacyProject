import 'package:coworking/view/pagres/diaatual.dart';
import 'package:flutter/material.dart';
import 'package:coworking/utils/colors.dart';
import 'package:coworking/custom/appbarCustom.dart';
import 'package:coworking/custom/drawerCustom.dart';
import 'page_homeScreen.dart';
import 'package:coworking/view/pagres/agenda.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _paginaSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Pharmacy App'),
      drawer: CustomDrawer(),
      body: IndexedStack(
        index: _paginaSelecionada,
        children: [
          pageHomeScreen(),
          PageAgendaPharmacy(),
          DiaAtual()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaSelecionada,
        onTap: (int? novoValor) {
          setState(() {
            _paginaSelecionada = novoValor!;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: ColorsPharmacy.iconstackColor,
            ),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_list_numbered_rtl,
              color: ColorsPharmacy.iconstackColor,
            ),
            label:'List Pharmacy',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: ColorsPharmacy.iconstackColor,
            ),
            label:'List Pharmacy Open',
          )
        ],
      ),
    );
  }
}
