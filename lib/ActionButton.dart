import 'package:flutter/material.dart' ;
import 'Constans.dart';
class ActionsButton extends StatelessWidget {
  const ActionsButton({
    super.key,
    required this.Name,
    required this.icon,
    this.onPress ,
  });

  final String Name;

  final Icon icon;
  final onPress ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
      onPress
      ,
      child: Container(
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Name!,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  icon.icon,
                  color: Colors.black,
                  size: 32,
                ),
              ],
            )),
        decoration: BoxDecoration(
            color: kButtomContainerColor,
            borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.only(top: 15, bottom: 20),
        height: 100,
        width: 370,
      ),
    );
  }
}