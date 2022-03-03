import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({Key? key, required this.color, this.cardChild}) : super(key: key);
  final Color color;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
