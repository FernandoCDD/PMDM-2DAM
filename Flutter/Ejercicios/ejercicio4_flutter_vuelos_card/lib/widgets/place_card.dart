import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String tiempo;
  final String hora;
  final String lugar;

  const PlaceCard(
      {super.key,
      required this.tiempo,
      required this.hora,
      required this.lugar});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1),
        ),
        child: SizedBox(
          width: 450,
          height: 150,
          child: Row(          
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15)
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [      
                  Text(
                    tiempo,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  const Text(
                    'CHECK-IN', 
                    style: TextStyle(
                      color: Color.fromARGB(255, 139, 139, 139),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'A partir de: $hora',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 139, 139, 139),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50)
                ),

              Flexible(                  
                child: Text(
                  lugar,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
