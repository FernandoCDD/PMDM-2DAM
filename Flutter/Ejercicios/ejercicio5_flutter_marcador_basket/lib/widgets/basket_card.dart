import 'package:flutter/material.dart';

class BasketCard extends StatefulWidget {
  const BasketCard({super.key});

  @override
  State<BasketCard> createState() => _BasketCardState();
}

class _BasketCardState extends State<BasketCard> {
  int _puntosTotales = 0;
  int _triples = 0;
  int _dobles = 0;
  int _sencillos = 0;
  bool _darkmode = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: SizedBox(
          width: 400,
          height: 300,
          child: Row(
            children: [
              Column(
                children: [
                  const Text(
                    "LOCAL",
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Card(
                      color: Colors.black,
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Text(
                          _puntosTotales as String,
                          style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 60,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Center(
                        child: Card(
                          color: Colors.black,
                          child: SizedBox(
                            width: 33,
                            height: 33,
                            child: Text(
                              _triples as String,
                              style: const TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Card(
                          color: Colors.black,
                          child: SizedBox(
                            width: 33,
                            height: 33,
                            child: Text(
                              _triples as String,
                              style: const TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Card(
                          color: Colors.black,
                          child: SizedBox(
                            width: 33,
                            height: 33,
                            child: Text(
                              _triples as String,
                              style: const TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  const Row(
                    children: [
                      Text("Triples", style: TextStyle(
                        fontSize: 20
                      ),),
                      Text("Triples", style: TextStyle(
                        fontSize: 20
                      ),),
                      Text("Triples", style: TextStyle(
                        fontSize: 20
                      ),)
                    ],
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
