import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({ Key? key, required this.color, this.cardChild, this.onPress }) : super(key: key);
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
