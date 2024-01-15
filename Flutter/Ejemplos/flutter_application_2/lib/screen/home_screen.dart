import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi primera app de Flutter'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const MyButton()
        )
    );
  }
}