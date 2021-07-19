import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/Constants/doubles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DateTime _selectedDate = DateTime.now();
  List<TimeOfDay> _selectedTimeSlot = [];
  List<List<TimeOfDay>> _slotsAvailable = [
    [TimeOfDay(hour: 15, minute: 5), TimeOfDay(hour: 15, minute: 10)],
    [TimeOfDay(hour: 12, minute: 44), TimeOfDay(hour: 16, minute: 20)],
    [TimeOfDay(hour: 14, minute: 45), TimeOfDay(hour: 17, minute: 08)],
    [TimeOfDay(hour: 17, minute: 40), TimeOfDay(hour: 18, minute: 26)],
    [TimeOfDay(hour: 19, minute: 42), TimeOfDay(hour: 19, minute: 25)],
    [TimeOfDay(hour: 11, minute: 43), TimeOfDay(hour: 19, minute: 21)],
    [TimeOfDay(hour: 12, minute: 46), TimeOfDay(hour: 19, minute: 24)],
    [TimeOfDay(hour: 17, minute: 48), TimeOfDay(hour: 19, minute: 24)]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kPrimaryColor, //change your color here
        ),
        title: Text(
          "Book Appointment",
          style: TextStyle(color: kPrimaryColor),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DatePicker(
                DateTime.now(),
                deactivatedColor: kPrimaryColor,
                initialSelectedDate: DateTime.now(),
                selectionColor: kPrimaryColor,
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  setState(() {
                    _selectedDate = date;
                  });
                },
                daysCount: 7,
              ),
              Divider(
                height: 20,
                thickness: 2.0,
              ),
              Container(
                height: 90,
                child: ListView.builder(
                    itemCount: _slotsAvailable.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedTimeSlot = _slotsAvailable[index];
                            });
                          },
                          child: TimeSlotCard(
                            _slotsAvailable[index].first,
                            _slotsAvailable[index].last,
                            listEquals(
                                _slotsAvailable[index], _selectedTimeSlot),
                          ));
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container TimeSlotCard(TimeOfDay start, TimeOfDay end, bool isActivated) {
    return Container(
      decoration: BoxDecoration(
        color: isActivated ? kPrimaryColor : Colors.white,
        borderRadius: BorderRadius.circular(kCardRadius),
      ),
      width: 70,
      child: Center(
        child:
            Text("${start.hour}:${start.minute}\n-\n${end.hour}:${end.minute}",
                style: TextStyle(
                  color: isActivated ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w800,
                  fontSize: 17,
                ),
                textAlign: TextAlign.center),
      ),
    );
  }
}
