import 'package:ejercicio6_flutter_card_details/widgets/car_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(105),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
              backgroundColor: const Color.fromARGB(255, 5, 41, 71),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  )),
              title: const Text(
                "Paris Charles",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                  )),         
              ],
            ),
            Container(
              color: const Color.fromARGB(255, 5, 41, 71),
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('86 Resultados', style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text('FILTRAR', style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 80, 142, 105),
                   fontWeight: FontWeight.bold),
                   )
                ],
              ),
                )
              
            )
            ],
          ),
        ),
        body: ListView(
          children: const [
            Padding(padding: EdgeInsets.only(top: 10)),
            CarDetailCard(
                urlImagen:
                    "https://admin.mallorcar.com/uploads/fleets/fleet_17_1668006061.png",
                marca: "Toyota",
                modelo: "Auris",
                combustible: "Gasolina",
                tipoMarchas: "Manual",
                numPersonas: 5,
                precio: 18000
            ),
            
            SizedBox(height: 20),

            CarDetailCard(
                urlImagen:
                    "https://www.seat.es/content/dam/public/seat-website/carworlds/new-cw-leon/overview/version-view/leon-fr/seat-leon-5d-fr-trim-desire-red-colour-alloy-wheels.png",
                marca: "Seat",
                modelo: "León",
                combustible: "Gasolina",
                tipoMarchas: "Manual",
                numPersonas: 5,
                precio: 21500
            ),

            SizedBox(height: 20),

            CarDetailCard(
                urlImagen:
                    "https://lacddam.lexusasia.com/lexus-v3-blueprint/models/suv/rx/rx-350-fsport/my23/exterior/cropped/rx350-fsport-083-white-nova.png",
                marca: "Lexus",
                modelo: "RX 350 F Sport",
                combustible: "Gasolina",
                tipoMarchas: "Manual",
                numPersonas: 5,
                precio: 44000
            ),
          ],
        ),
      ),
    );
  }
}
