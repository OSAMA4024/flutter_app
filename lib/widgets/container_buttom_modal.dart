import 'package:flutter/material.dart';

class ContainerButtomModal extends StatelessWidget {
  final Color bgColor;
  final double containerWidth;
  final String itext;

  const ContainerButtomModal({
    super.key,
    required this.bgColor,
    required this.containerWidth,
    required this.itext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Center(
        child: Text(
          itext,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}