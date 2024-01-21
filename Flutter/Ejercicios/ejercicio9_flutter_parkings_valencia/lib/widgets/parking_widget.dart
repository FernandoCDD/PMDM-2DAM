import 'package:ejercicio9_flutter_parkings_valencia/model/parking_list/parking_list_response/parking_list_response.dart';
import 'package:ejercicio9_flutter_parkings_valencia/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<ParkingListResponse> fetchParking() async {
  final response =
      await http.get(Uri.parse('https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/parkings/records?limit=20'));

  if (response.statusCode == 200) {
    return ParkingListResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class ParkingWidget extends StatefulWidget {
  const ParkingWidget({super.key});

  @override
  State<ParkingWidget> createState() => _ParkingWidgetState();
}

class _ParkingWidgetState extends State<ParkingWidget> {

  late Future <ParkingListResponse> parkingList;

  @override
  void initState() {
    super.initState();
    parkingList = fetchParking();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder(future: parkingList,
       builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomeScreen(parkingList: snapshot.data!.results!);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }),
    );
  }
}