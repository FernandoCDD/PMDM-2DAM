import 'package:ejercicio9_flutter_parkings_valencia/model/parking_list/parking_list_response/result.dart';
import 'package:ejercicio9_flutter_parkings_valencia/widgets/parking_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatefulWidget {

  final List<Result> parkingList;

  const HomeScreen({super.key, required this.parkingList});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _activado = true;

   @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _activado = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parkings Valencia'),
      ),
      body: Skeletonizer(enabled: _activado,
       child: ListView.builder(
        itemCount: widget.parkingList.length,
        itemBuilder: (context, index) {
          return ParkingItem(parking: widget.parkingList[index]);
        },
       )),
    );
  }
}