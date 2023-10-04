import 'package:bmi_v2/Constans.dart';
import 'package:flutter/material.dart';


class CustomFloatingButton extends StatelessWidget {
final IconData? icon ;
final onpress ;
CustomFloatingButton({ this.icon ,  this.onpress}) ;

  @override
  Widget build(BuildContext context) {
    return   RawMaterialButton(
      child: Icon(icon , size: 32 , color: Colors.black87, ) ,
      onPressed: onpress ,

      constraints: BoxConstraints().tighten(width: 50 , height: 50),
      shape: CircleBorder(  ) ,
      fillColor: kUiElementColor,



    );
  }
}
