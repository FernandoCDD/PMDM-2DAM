import 'package:ejercicio3_flutter_lista_horizontal/widgets/actor_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Text(
              'Best Iranian Actors and Actresses',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
                ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text(
              'March 2020',
              style: TextStyle(
                color: Colors.grey,          
              ),           
            ),
          
            const SizedBox(
              height: 50,
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Padding(padding: EdgeInsets.all(8.0)),
                  ActorCard(imageUrl: 'https://estaticos-cdn.prensaiberica.es/clip/3cc9a70a-0f0a-402d-a52d-40c63e4c9c1a_16-9-aspect-ratio_default_0.jpg', nombre: 'Paco', apellido: 'Porras',),
                  Padding(padding: EdgeInsets.all(12.0)),
                  ActorCard(imageUrl: 'https://s2.abcstatics.com/abc/www/multimedia/gente/2023/07/15/1468965518-U503377014720EiB-1200x840@abc.jpg', nombre: 'Germán', apellido: 'Palomares'),
                  Padding(padding: EdgeInsets.all(12.0)),
                  ActorCard(imageUrl: 'https://s2.ppllstatics.com/ideal/www/multimedia/202005/29/media/cortadas/Dani-Benitez-kOmH-U110349577817XzH-1248x770@Ideal.jpg', nombre: 'Daniel', apellido: 'Benítez')
                ],
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            const Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 95)),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.home),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text('Home', style: TextStyle(fontWeight: FontWeight.bold))],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.camera_alt, color: Colors.grey),
                       Padding(padding: EdgeInsets.only(top: 5)),
                        Text('Booking', style: TextStyle(color: Colors.grey),)],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.list, color: Colors.grey),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text('Lists', style: TextStyle(color: Colors.grey))],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.person, color: Colors.grey),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text('Profile', style: TextStyle(color: Colors.grey))],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/*
bottomNavigationBar: Container(
          child: const Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home
                  ),
                  Text('Home')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.camera_alt
                  ),
                  Text('Booking')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.list
                  ),
                  Text('Lists')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.person
                  ),
                  Text('Profile')
                ],
              )
            ],
          ),
*/

/*
bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'Booking'
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'Booking'
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'Booking'
              )
          ],
        ),
*/