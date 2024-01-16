import 'package:ejercicio6_flutter_card_details/widgets/car_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 4, 47, 82)
        ),
        body: ListView(
          children: const [
            Padding(padding: EdgeInsets.only(top: 10)),
            CarDetailScreen(
                urlImagen:
                    "https://admin.mallorcar.com/uploads/fleets/fleet_17_1668006061.png",
                marca: "Toyota",
                modelo: "Auris",
                combustible: "Gasolina",
                tipoMarchas: "Manual",
                numPersonas: 5,
                precio: 21.600
            ),

            SizedBox(height: 20),

            CarDetailScreen(
                urlImagen:
                    "https://www.seat.es/content/dam/public/seat-website/carworlds/new-cw-leon/overview/version-view/leon-fr/seat-leon-5d-fr-trim-desire-red-colour-alloy-wheels.png",
                marca: "Seat",
                modelo: "León",
                combustible: "Gasolina",
                tipoMarchas: "Manual",
                numPersonas: 5,
                precio: 21.600
            ),

            SizedBox(height: 20),

            CarDetailScreen(
                urlImagen:
                    "https://cdn.tiresleader.com/static/img/auto/opcos93y.jpg",
                marca: "Opel",
                modelo: "Corsa del Luque",
                combustible: "Gasolina",
                tipoMarchas: "Manual",
                numPersonas: 5,
                precio: 21.600
            ),
          ],
        ),
      ),
    );
  }
}
