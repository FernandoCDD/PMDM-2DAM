import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {

  final String urlImagen;
  final String marca;
  final String modeloFranPutero;

  const CarDetailScreen({super.key, required this.urlImagen, required this.marca, required this.modeloFranPutero});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.network(urlImagen),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(marca, style: const TextStyle(color: Colors.black),),
          TextButton(onPressed:(){Navigator.pop(context);}, child: const Text('Volver'))
        ],
      ),
    );
  }
}