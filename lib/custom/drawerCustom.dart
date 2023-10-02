import 'package:flutter/material.dart';
import 'package:coworking/utils/colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsPharmacy.drawerColor,
      child: ListView(
        children: [
          Card(
            color: ColorsPharmacy.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: ColorsPharmacy.icondrawerColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: ColorsPharmacy.textdrawerColor),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ),
          Card(
            color: ColorsPharmacy.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: ColorsPharmacy.icondrawerColor,
              ),
              title: Text(
                'Configurações',
                style: TextStyle(color: ColorsPharmacy.textdrawerColor),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ),
          Card(
            color: ColorsPharmacy.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.location_city,
                color: ColorsPharmacy.icondrawerColor,
              ),
              title: Text(
                'Cidade',
                style: TextStyle(color: ColorsPharmacy.textdrawerColor),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
