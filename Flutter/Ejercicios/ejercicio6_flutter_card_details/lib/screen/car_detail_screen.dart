import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final int numPuertas = 0;
  final String marca;
  final String modelo;
  final String combustible;
  final String tipoMarchas;
  final int numPersonas;
  final double precio;

  const CarDetailScreen(
      {super.key,
      required this.marca,
      required this.modelo,
      required this.combustible,
      required this.tipoMarchas,
      required this.numPersonas,
      required this.precio});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 450,
          height: 300,
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 15, top: 40)),
                  Text("El más barato, buena puntuación",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromARGB(255, 57, 235, 63),
                          fontSize: 15)),
                  Padding(padding: EdgeInsets.only(left: 130)),
                  Text(
                    "45 Ofertas",
                    style: TextStyle(
                        color: Color.fromARGB(255, 136, 136, 136),
                        fontSize: 15),
                  )
                ],
              ),

              Center(
                  child: Image.network(
                "https://admin.mallorcar.com/uploads/fleets/fleet_17_1668006061.png",
                height: 170,
              )),

              Text(
                '$marca $modelo',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text('$numPuertas · $combustible', style: const TextStyle(
                color: Color.fromARGB(255, 136, 136, 136)
              ),),

              Row(
                children: [
                  Image.network('assests/icons/controles-de-marcha-de-conduccion.png', height: 30),
                ],
              
              )
            ],
          ),
        ),
      ),
    );
  }
}
