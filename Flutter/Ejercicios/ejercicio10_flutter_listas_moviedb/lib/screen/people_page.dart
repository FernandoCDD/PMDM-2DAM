import 'package:ejercicio10_flutter_listas_moviedb/model/actor_list/actor_list_response/result.dart';
import 'package:ejercicio10_flutter_listas_moviedb/widget/people_list_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ActorsPage extends StatefulWidget {

  final List<ActorsResult> actorList;

  const ActorsPage({super.key, required this.actorList});

  @override
  State<ActorsPage> createState() => _ActorsPageState();
}

class _ActorsPageState extends State<ActorsPage> {

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
        itemCount: widget.actorList.length,
        itemBuilder: (context, index) {
          return PeopleListItem(actor: widget.actorList[index]);
        },
       )),
    );
  }
}