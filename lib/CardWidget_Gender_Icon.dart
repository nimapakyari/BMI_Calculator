import 'package:flutter/material.dart';
import 'package:bmi_v2/Constans.dart';



class CardWidget_Gender_Icon extends StatelessWidget {
  const CardWidget_Gender_Icon({
    super.key,
    required this.genderIcon,
    required this.genderName,
  });

  final Icon genderIcon;

  final String genderName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon.icon,
          color: kUiElementColor,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderName,
          style: kTextStyle  ,
        )
      ],
    );
  }
}