import 'package:ejercicio6_flutter_card_details/screen/car_detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CarDetailScreen(marca: "Toyota", modelo: "Auris", combustible: "Gasolina",
     tipoMarchas: "Manual", numPersonas: 5, precio: 21.600);
  }
}