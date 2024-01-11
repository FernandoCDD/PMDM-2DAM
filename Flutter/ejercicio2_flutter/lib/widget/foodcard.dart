import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final String urlImagen;
  final String nombre;
  final double valoracion;
  final String direccion;
  final double precio;

  const FoodCard({super.key, required this.urlImagen, required this.nombre,
   required this.valoracion, required this.direccion, required this.precio});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: SizedBox(
            width: 450,
            height: 112,             
            child: Row(
              children: [
                Expanded(
                  child: Image.network(urlImagen, fit: BoxFit.cover),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Text('Nombre: $nombre', style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('Valoración: $valoracion', style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('Dirección: $direccion', style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('Precio: $precio', style: const TextStyle(fontWeight: FontWeight.bold))
                      ], 
                    ),
                  ),
                )
              ],          
            ),     
          ),
        ),
      ),
    );    
  }
}