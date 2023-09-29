import 'package:flutter/material.dart';
import 'package:coworking/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsPharmacy.appbarColor,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_pharmacy_rounded,
              color: ColorsPharmacy.iconappbarColor,
            ),
            SizedBox(width: 8),
            Text(title,style: TextStyle(color: ColorsPharmacy.textappbarColor),),
            SizedBox(width: 8),
            Icon(
              Icons.local_pharmacy_rounded,
              color: ColorsPharmacy.iconappbarColor,
            ),
          ],
        ),
      ),
    );
  }
}
