import 'package:flutter/material.dart';

class ActorCard extends StatelessWidget {

  final String imageUrl;
  final String nombre;
  final String apellido;

  const ActorCard({super.key, required this.imageUrl, required this.nombre, required this.apellido});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: 250,
              alignment: Alignment.center,),
          )
        ),

        Text(nombre, style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),

        Text(apellido, style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),)
      ],
    );
  }
}