import 'package:flutter/material.dart';

class BasketCard extends StatefulWidget {
  const BasketCard({super.key});

  @override
  State<BasketCard> createState() => _BasketCardState();
}

class _BasketCardState extends State<BasketCard> {
  int _puntosTotalesLocal = 0;
  int _triplesLocal = 0;
  int _doblesLocal = 0;
  int _sencillosLocal = 0;
  int _puntosTotalesVis = 0;
  int _triplesVis = 0;
  int _doblesVis = 0;
  int _sencillosVis = 0;
  bool _darkmode = false;

  void contarTripleLocal(){
    setState(() {
      _puntosTotalesLocal += 3;
      _triplesLocal += 1;
    });
  }

  void contarDobleLocal(){
    setState(() {
      _puntosTotalesLocal += 2;
      _doblesLocal += 1;
    });
  }

  void contarSencillosLocal(){
    setState(() {
      _puntosTotalesLocal += 1;
      _sencillosLocal += 1;
    });
  }

  void contarTripleVis(){
    setState(() {
      _puntosTotalesVis += 3;
      _triplesVis += 1;
    });
  }

  void contarDobleVis(){
    setState(() {
      _puntosTotalesVis += 2;
      _doblesVis += 1;
    });
  }

  void contarSencillosVis(){
    setState(() {
      _puntosTotalesVis += 1;
      _sencillosVis += 1;
    });
  }

  void cambiarModo(){
    setState(() {
      _darkmode = !_darkmode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: _darkmode ? const Color.fromARGB(255, 39, 39, 39) : Colors.white,
        child: SizedBox(
          width: 450,
          height: 230,
          child: Expanded(
            child: Row(
              children: [      
                Column(
                  children: [
                    Text(
                      "LOCAL",
                      style: TextStyle(
                        fontSize: 40,
                         fontWeight: FontWeight.bold,
                         color: _darkmode ? Colors.white : Colors.black),
                    ),
                    Center(
                      child: Card(
                        color: _darkmode ? Colors.white : Colors.black,
                        child: SizedBox(
                          width: 150,
                          height: 70,
                          child: Text(
                            '$_puntosTotalesLocal',                         
                            textAlign: TextAlign.center,                     
                            style: const TextStyle(
                              color: Colors.orange,
                              fontSize: 50,
                            ),                   
                          ),
                        ),
                      ),
                    ),
            
                    const Padding(padding: EdgeInsets.only(top: 10)),
            
                    Row(
                      children: [
                        GestureDetector(
                          onTap: contarTripleLocal,
                          child: Center(                      
                            child: Card(
                              color: _darkmode ? Colors.white : Colors.black,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Text(
                                  '$_triplesLocal',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
            
                        const Padding(padding: EdgeInsets.only(right: 7)),
            
                        GestureDetector(
                          onTap: contarDobleLocal,
                          child: Center(
                            child: Card(
                              color: _darkmode ? Colors.white : Colors.black,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Text(
                                  '$_doblesLocal',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
            
                        const Padding(padding: EdgeInsets.only(right: 7)),
            
                        GestureDetector(
                          onTap: contarSencillosLocal,
                          child: Center(
                            child: Card(
                              color: _darkmode ? Colors.white : Colors.black,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Text(
                                  '$_sencillosLocal',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                      
                     Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(right: 8)),
            
                        Text("Triples", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: _darkmode ? Colors.white : Colors.black,
                        ),),
                        
                        const Padding(padding: EdgeInsets.only(right: 17)),
               
                        Text("Dobles", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: _darkmode ? Colors.white : Colors.black,
                        ),),
            
                        const Padding(padding: EdgeInsets.only(right: 13)),
            
                        Text("Sencillos", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: _darkmode ? Colors.white : Colors.black,
                        ),),   
            
                      ],
                    )
                  ],
                ),    
            
                Expanded(
                  child: Center(
                    child: Column(   
                      mainAxisAlignment: MainAxisAlignment.center,             
                      children: [                           
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _puntosTotalesLocal = 0;
                              _triplesLocal = 0;
                              _doblesLocal = 0;
                              _sencillosLocal = 0;
                              _puntosTotalesVis = 0;
                              _triplesVis = 0;
                              _doblesVis = 0;
                              _sencillosVis = 0;
                            });
                          },
                          child: Card(
                            color: _darkmode ? Colors.white : Colors.black,
                            child: const SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.refresh,
                                color: Colors.orange,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                    
                        const Padding(padding: EdgeInsets.only(top: 10)),
                    
                        GestureDetector(
                          onTap: cambiarModo,
                          child: Card(
                            color: _darkmode ? Colors.white : Colors.black,
                            child: const SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.dark_mode,
                                color: Colors.orange,
                                size: 30,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            
                Column(
                  children: [
                    Text(
                      "VISIT.",
                      style: TextStyle(
                        fontSize: 40,
                         fontWeight: FontWeight.bold,
                         color: _darkmode ? Colors.white : Colors.black),
                    ),
                    Center(
                      child: Card(
                        color: _darkmode ? Colors.white : Colors.black,
                        child: SizedBox(
                          width: 150,
                          height: 70,
                          child: Text(
                            '$_puntosTotalesVis',                         
                            textAlign: TextAlign.center,                     
                            style: const TextStyle(
                              color: Colors.orange,
                              fontSize: 50,
                            ),                   
                          ),
                        ),
                      ),
                    ),
            
                    const Padding(padding: EdgeInsets.only(top: 10)),
            
                    Row(
                      children: [
                        GestureDetector(
                          onTap: contarTripleVis,
                          child: Center(                      
                            child: Card(
                              color: _darkmode ? Colors.white : Colors.black,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Text(
                                  '$_triplesVis',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
            
                        const Padding(padding: EdgeInsets.only(right: 7)),
            
                        GestureDetector(
                          onTap: contarDobleVis,
                          child: Center(
                            child: Card(
                              color: _darkmode ? Colors.white : Colors.black,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Text(
                                  '$_doblesVis',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
            
                        const Padding(padding: EdgeInsets.only(right: 7,)),
            
                        GestureDetector(
                          onTap: contarSencillosVis,
                          child: Center(
                            child: Card(
                              color: _darkmode ? Colors.white : Colors.black,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Text(
                                  '$_sencillosVis',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                      
                     Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(right: 8)),
            
                        Text("Triples", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: _darkmode ? Colors.white : Colors.black,
                        ),),
                        
                        const Padding(padding: EdgeInsets.only(right: 17)),
               
                        Text("Dobles", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: _darkmode ? Colors.white : Colors.black,
                        ),),
            
                        const Padding(padding: EdgeInsets.only(right: 13)),
            
                        Text("Sencillos", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: _darkmode ? Colors.white : Colors.black,
                        ),),            
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

