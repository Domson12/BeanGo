import 'package:flutter/material.dart';

class BeanGoButton extends StatelessWidget {
  const BeanGoButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
