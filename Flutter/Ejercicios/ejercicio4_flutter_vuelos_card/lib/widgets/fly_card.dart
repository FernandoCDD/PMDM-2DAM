import 'package:flutter/material.dart';

class FlyCard extends StatelessWidget {
  final String horaSalida;
  final String horaLlegada;
  final String salida;
  final String destino;
  final String duracion;

  const FlyCard(
      {super.key,
      required this.horaSalida,
      required this.horaLlegada,
      required this.salida,
      required this.destino,
      required this.duracion});

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
          height: 300,
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 15)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    horaSalida,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  const Text(
                    'SALIDA',
                    style: TextStyle(
                      color: Color.fromARGB(255, 139, 139, 139),
                      fontSize: 15,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 100)),
                  Text(
                    horaLlegada,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  const Text(
                    'LLEGADA',
                    style: TextStyle(
                      color: Color.fromARGB(255, 139, 139, 139),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(left: 100)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Row(
                    children: [
                      const Center(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Colors.black, strokeAlign: 5),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: SizedBox(
                            width: 50,
                            height: 30,
                            child: Center(
                                child: Text(
                              'MAD',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        salida,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  Row(
                    children: [
                      Image.network(
                        'https://play-lh.googleusercontent.com/bn9i62M-CaGiVYlglz5uoDKa_uhWCRKux4_NrVqQ5R70C79v7sR88FETqlGxulDbvdk',
                        cacheHeight: 40,
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        'Iberia 7448',
                        style: TextStyle(
                            color: Color.fromARGB(255, 139, 139, 139),
                            fontSize: 17),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    'Duración $duracion',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 139, 139, 139),
                        fontSize: 17),
                  ),

                  const Padding(padding: EdgeInsets.only(top: 45)),

                  Row(
                    children: [
                      const Center(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Colors.black, strokeAlign: 5),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: SizedBox(
                            width: 50,
                            height: 30,
                            child: Center(
                                child: Text(
                              'LHR',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        destino,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
