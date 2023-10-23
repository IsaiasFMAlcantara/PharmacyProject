import 'package:flutter/material.dart';
import 'package:coworking/utils/colors.dart';

class CustomText extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomText({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
          color: ColorsPharmacy.texthomeColor,
          fontFamily: 'Arial',
          fontSize: 30,
          fontWeight:
              FontWeight.bold, // Adicione esta linha para definir o negrito
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
