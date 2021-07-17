import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/Constants/doubles.dart';
import 'package:flutter/material.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("vvok"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: DatePicker(),
          ),
        ],
      ),
    );
  }
}

class DatePicker extends StatelessWidget {
  const DatePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        DateCard(
          date: DateTime(2002, 5, 17),
        ),
        DateCard(
          date: DateTime(2002, 5, 17),
        ),
        DateCard(
          date: DateTime(2002, 5, 17),
        ),
        DateCard(
          date: DateTime(2002, 5, 17),
        ),
        DateCard(
          date: DateTime(2002, 5, 17),
        ),
        DateCard(
          date: DateTime(2002, 5, 17),
        ),
        DateCard(
          date: DateTime(2002, 5, 17),
        ),
        DateCard(
          date: DateTime(2002, 5, 17),
        ),
      ],
    );
  }
}

class DateCard extends StatelessWidget {
  final DateTime date;
  const DateCard({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 70,
      decoration: BoxDecoration(
          border: Border.all(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(kCardRadius)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "${date.day}",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
          Text(
            [
              "Mon",
              "Tue",
              "Wed",
              "Thurs",
              "Fri",
              "Sat",
              "Sun"
            ][date.weekday - 1],
            style: TextStyle(
              color: kPrimaryColor.withOpacity(0.8),
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
