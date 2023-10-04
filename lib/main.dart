import 'dart:ffi';
import 'package:bmi_v2/Constans.dart';
import 'package:flutter/material.dart';
import 'package:bmi_v2/CardWidget_Gender_Icon.dart';
import 'package:bmi_v2/CardDesign_withIcon.dart';
import 'ActionButton.dart';
import 'FloatingActionButton.dart';
import 'ResultScreen.dart';
import 'package:bmi_v2/HomePage.dart';
void main() {
  runApp(const Bmi_Calcolator());
}

class Bmi_Calcolator extends StatefulWidget {
  const Bmi_Calcolator({super.key});

  @override
  State<Bmi_Calcolator> createState() => _Bmi_CalcolatorState();
}

class _Bmi_CalcolatorState extends State<Bmi_Calcolator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          sliderTheme: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white54,
              inactiveTrackColor: Colors.black87,
              overlayColor: Color(0x29dafd87),
              thumbColor: kUiElementColor,
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 15,
              ),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
          useMaterial3: true,
          scaffoldBackgroundColor: kBackGround,
          appBarTheme: AppBarTheme(backgroundColor: kBackGround),
        ),
        routes: {
          '/' : (context) => HomePage() ,


        },
        initialRoute: '/' ) ;

  }
}
