import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.accessible_forward_sharp),
        Text('Hola Mundo'),
        Icon(Icons.airplanemode_active_outlined)
        ],
    );
  }

}