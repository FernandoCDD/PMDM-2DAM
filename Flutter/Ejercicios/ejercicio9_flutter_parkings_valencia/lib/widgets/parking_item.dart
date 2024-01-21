import 'package:ejercicio9_flutter_parkings_valencia/model/parking_list/parking_list_response/result.dart';
import 'package:flutter/material.dart';

class ParkingItem extends StatelessWidget {
  final Result parking;
  const ParkingItem({super.key, required this.parking});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: SizedBox(
        width: 300,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10, top: 10)),
              Expanded(
                child: Image.network('https://i0.wp.com/infovalenciatravel.com/wp-content/uploads/2022/08/Guia-de-Valencia.png?fit=1080%2C1080&ssl=1',
                  height: 110,
                  alignment: Alignment.topLeft,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [    
                    Text(parking.nombre!, style: const TextStyle(fontWeight: FontWeight.bold),),
                    Text(parking.direccion!, style: const TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(parking.plazastota.toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
                  const Icon(Icons.person,),

                  const Padding(padding: EdgeInsets.only(left: 10)),
                  
                  Text(parking.plazaslibr.toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
                  const Icon(Icons.fiber_manual_record_sharp, color: Colors.green,)
                ],
              ))
            ],
          ),  
          ],
        )    
      ),
    );
  }
}