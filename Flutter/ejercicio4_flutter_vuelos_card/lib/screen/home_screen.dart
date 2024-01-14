import 'package:ejercicio4_flutter_vuelos_card/widgets/date_card.dart';
import 'package:ejercicio4_flutter_vuelos_card/widgets/fly_card.dart';
import 'package:ejercicio4_flutter_vuelos_card/widgets/place_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 224, 224),
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
        body: ListView(
          children: const [
            DateCard(
              dayOfWeek: 'Domingo',
              dayOfMonth: '11',
              month: 'Marzo',
            ),
            SizedBox(height: 20),
            PlaceCard(
              tiempo: 'Tarde',
              hora: '15:00',
              lugar: 'Park Plaza Westminster Bridge London',
            ),
            SizedBox(height: 10),
            FlyCard(
              horaSalida: '20:55',
              horaLlegada: '22:05',
              salida: 'Madrid',
              destino: 'Londres',
              duracion: '2h 10m',
            ),
            SizedBox(height: 20),
            DateCard(
              dayOfWeek: 'Domingo',
              dayOfMonth: '11',
              month: 'Marzo',
            ),
            SizedBox(height: 20),
            PlaceCard(
              tiempo: 'Tarde',
              hora: '15:00',
              lugar: 'Park Plaza Westminster Bridge London',
            ),
            SizedBox(height: 20),

             FlyCard(
              horaSalida: '20:55',
              horaLlegada: '22:05',
              salida: 'Madrid',
              destino: 'Londres',
              duracion: '2h 10m',
            ),
          ],
        ),
      ),
    );
  }
}