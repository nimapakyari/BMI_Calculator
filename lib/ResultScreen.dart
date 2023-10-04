import 'package:bmi_v2/Constans.dart';
import 'package:flutter/material.dart';


import 'ActionButton.dart';
import 'package:bmi_v2/CardDesign_withIcon.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen( {super.key, required this.bmiResult , required this.resultTesxt} );
final String bmiResult ;
final String resultTesxt ;






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(

                  children: [
                    Icon(Icons.summarize , color: kUiElementColor , size:48,) ,
                    Text(
                      'Your Result',
                      style: kBoldTextDesign.copyWith(fontSize: 45),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 12,
                child: CardDesign(
                    colour: ActivecardColor,
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          Center(
                            child: Text(
                              resultTesxt,
                              style: TextStyle(
                                  color: kUiElementColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )),
                        Center(
                            child: Text(
                              bmiResult,
                              style: kBoldTextDesign.copyWith(fontSize: 100),
                            )),

                      ],
                    )),
              ),
              Expanded(
                flex: 3,
                child: ActionsButton(
                    Name: 'Re-Calculate',
                    icon: const Icon(Icons.replay),
                    onPress: () {
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




