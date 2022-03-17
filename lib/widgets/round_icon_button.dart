import 'package:flutter/material.dart';
import '../constants/constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: tightWidth,
        height: tightHeight,
      ),
      shape: const CircleBorder(),
      fillColor: fillButtonColor,
    );
  }
}
