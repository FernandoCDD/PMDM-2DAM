import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final String urlImagen;
  final int numPuertas = 0;
  final String marca;
  final String modelo;
  final String combustible;
  final String tipoMarchas;
  final int numPersonas;
  final double precio;

  const CarDetailScreen(
      {super.key,
      required this.urlImagen,
      required this.marca,
      required this.modelo,
      required this.combustible,
      required this.tipoMarchas,
      required this.numPersonas,
      required this.precio,
      });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 450,
          height: 335,
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
                urlImagen,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 15)),
                  Image.network('assests/icons/controles-de-marcha-de-conduccion.png', height: 25),
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  Text(tipoMarchas),

                  const Padding(padding: EdgeInsets.only(left: 15)),
                  const Icon(Icons.person),
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  Text('$numPersonas'),

                  const Padding(padding: EdgeInsets.only(left: 15)),
                  const Icon(Icons.severe_cold_sharp),
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  const Text('Yes')
                ],              
              ),

              const Divider(),

              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  Text('$precio€', style: const TextStyle(color: Colors.blue, fontSize: 23)),

                  const Padding(padding: EdgeInsets.only(left: 260)),

                  const InkWell(
                    child: Text('Seleccionar', style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      decoration: TextDecoration.underline, decorationColor: Colors.blue
                    ),),
                    
                  )
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

/*
appBar: AppBar(
          flexibleSpace: Stack(
            children: [
              Positioned.fill(
                child: Image.network('https://static.eldiario.es/clip/ac5016f6-7afd-43f8-9d87-f38c82e5a9f1_16-9-discover-aspect-ratio_default_0.jpg',
                fit: BoxFit.cover
                )
              ),                   
            ],
          ),
        ),
*/

/*
const CarDetailScreen(
      urlImagen: "https://admin.mallorcar.com/uploads/fleets/fleet_17_1668006061.png",
      marca:"Toyota",
      modelo: "Auris",
      combustible: "Gasolina",
      tipoMarchas: "Manual",
      numPersonas: 5, 
      precio: 21.600
      );
*/