import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  final String dayOfWeek;
  final String dayOfMonth;
  final String month;

  const DateCard(
      {super.key,
      required this.dayOfWeek,
      required this.dayOfMonth,
      required this.month});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      elevation: 0,
      color: const Color.fromARGB(255, 82, 82, 82),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: SizedBox(
        width: 170,
        height: 50,
        child: Center(
          child: Text(
            '$dayOfWeek $dayOfMonth $month',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    ));
  }
}
