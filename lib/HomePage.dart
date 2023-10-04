

import 'package:bmi_v2/Constans.dart';
import 'package:flutter/material.dart';
import 'package:bmi_v2/CardWidget_Gender_Icon.dart';
import 'package:bmi_v2/CardDesign_withIcon.dart';
import 'ActionButton.dart';
import 'FloatingActionButton.dart';
import 'ResultScreen.dart';

import 'CalculatorBrain.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender = Gender.male;

  int height = 170;
  int weight = 70;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI Calculator')),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        child: CardDesign(
                          colour: selectedGender == Gender.male
                              ? ActivecardColor
                              : inActivecardColor,
                          cardChild: const CardWidget_Gender_Icon(
                            genderName: ' MALE',
                            genderIcon: Icon(Icons.male),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: CardDesign(
                          colour: selectedGender == Gender.female
                              ? ActivecardColor
                              : inActivecardColor,
                          cardChild: const CardWidget_Gender_Icon(
                            genderName: 'FEMALE',
                            genderIcon: Icon(Icons.female),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CardDesign(
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text(
                          'Height',
                          style: kTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toString(),
                            style: kBoldTextDesign,
                          ),
                          const Text(
                            'cm',
                            style: kGrayTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: kminheight,
                        max: kMaxheight,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ],
                  ),
                  colour: ActivecardColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: CardDesign(
                      colour: ActivecardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: kTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toString(),
                                style: kBoldTextDesign,
                              ),
                              const Text(
                                'kg',
                                style: kGrayTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomFloatingButton(
                                icon: Icons.add,
                                onpress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              CustomFloatingButton(
                                icon: Icons.remove,
                                onpress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: CardDesign(
                      colour: ActivecardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: kTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toString(),
                                style: kBoldTextDesign,
                              ),
                              Text(
                                'y',
                                style: kGrayTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomFloatingButton(
                                icon: Icons.add,
                                onpress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              CustomFloatingButton(
                                icon: Icons.remove,
                                onpress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              ActionsButton(
                Name: 'Calculate',
                icon: Icon(
                  Icons.navigate_next,
                ),
                onPress: () {
                  setState(() {
      calculatorBrain calc = calculatorBrain(weight: weight, height: height);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultScreen( bmiResult: calc.CalculateBmi(), resultTesxt: calc.GetResult ( ), );
                        },
                      ),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
