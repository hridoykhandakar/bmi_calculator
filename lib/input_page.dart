import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;
const Color bottomContainerColor = Color(0xffeb1555);
const Color activeCardColor = Color(0xff272A4E);
const Color inActiveCardColor = Color(0xff111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ===================== Top Box Start ==============
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        label: "male",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),

                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        label: "Female",
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ===================== Middle Box Start ==============
            Expanded(child: ReuseableCard(color: activeCardColor)),
            // ===================== Bottom Box Start ==============
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReuseableCard(color: activeCardColor)),
                  Expanded(child: ReuseableCard(color: activeCardColor)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: bottomContainerHeight,
              width: double.infinity,
              color: bottomContainerColor,
            ),
          ],
        ),
      ),
    );
  }
}
