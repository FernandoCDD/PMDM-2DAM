import 'package:ejercicio2_flutter/widget/foodcard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Food Cards'),
          centerTitle: true,
        ),
        body: ListView(
          children: const[
            FoodCard(
              urlImagen: 'https://play-lh.googleusercontent.com/hSRuCp9qVkxNYLYibPYyra4bQLYDyHg40TA1Cu6i9Z3HsWEgS1q076VfjacAdQquHw',
              nombre: 'McDonalds',
              valoracion: 3.5,
              direccion: 'Calle de la piruleta, 69',
              precio: 6.2
            ),
            FoodCard(
              urlImagen: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/KFC_Logo.svg/2560px-KFC_Logo.svg.png',
              nombre: 'KFC',
              valoracion: 3.7,
              direccion: 'Mi tía de Almería, 123',
              precio: 7.1,
            ),   
            FoodCard(
              urlImagen: 'https://www.tattooniedesign.com/cdn/shop/products/Capturadepantalla2023-01-31alas18.22.31_1024x1024.png?v=1675185776',
              nombre: 'Doner Kebab',
              valoracion: 2.7,
              direccion: 'Calle Calvicie, 3',
              precio: 4.5,
            ),           
          ],
        ),
        
      ),
    );
  }
}

/*
children: const[
          SizedBox(
            height: 150,
            child: Card(
              child: SizedBox(
                width: 300,
                height: 200,
                child: Center(
                  child: Image(image: NetworkImage('https://cdn.recetasderechupete.com/wp-content/uploads/2020/11/Tortilla-de-patatas-4.jpg'))
                ),
            
              ),
            
            ),
          )
        ],
*/
