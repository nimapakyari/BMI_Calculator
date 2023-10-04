import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({
    super.key,
    required this.colour,
     this.cardChild,


  });

  final Color colour;
  final Widget? cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.only(left: 5 , right:  5 , top: 8 , bottom: 8),

      decoration:
      BoxDecoration(color: colour, borderRadius: BorderRadius.circular(15)),
    );
  }
}