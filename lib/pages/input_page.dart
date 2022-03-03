import 'package:flutter/material.dart';

const double buttonContainerHeight = 60;
const int activeCardColor = 0xFF1D1E33;
const int buttonContainerColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              children: const <Widget>[
                Expanded(
                  child: ContainerCard(
                    color: Color(activeCardColor),
                  ),
                ),
                Expanded(
                  child: ContainerCard(
                    color: Color(activeCardColor),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ContainerCard(
              color: Color(activeCardColor),
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ContainerCard(
                    color: Color(activeCardColor),
                  ),
                ),
                Expanded(
                  child: ContainerCard(
                    color: Color(activeCardColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(buttonContainerColor),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: buttonContainerHeight,
          )
        ],
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  const ContainerCard({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
