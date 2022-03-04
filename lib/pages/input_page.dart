import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/widgets.dart';

const double buttonContainerHeight = 60;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const buttonContainerColor = Color(0xFFEB1555);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // // Actualizar color tarjeta seleccionada.
  // void updateColor(Gender genero) {
  //   // gender = 1 MALE.
  //   if (genero == Gender.male) {
  //     femaleCardColor = inactiveCardColor;
  //     maleCardColor = (maleCardColor == inactiveCardColor) ? activeCardColor: inactiveCardColor;
  //   }
  //
  //   // gender = 2 FEMALE
  //   if (genero == Gender.female) {
  //     maleCardColor = inactiveCardColor;
  //     femaleCardColor = (femaleCardColor == inactiveCardColor) ? activeCardColor: inactiveCardColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ContainerCard(
                      color: selectedGender == Gender.male? activeCardColor : inactiveCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
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
                    child: ContainerCard(
                      color: selectedGender == Gender.female? activeCardColor : inactiveCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ContainerCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ContainerCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ContainerCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: buttonContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: buttonContainerHeight,
          ),
        ],
      ),
    );
  }
}
