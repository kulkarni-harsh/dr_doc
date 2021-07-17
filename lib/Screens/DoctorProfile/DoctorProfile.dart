import 'package:dr_doc/Components/DoctorCard.dart';
import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/Constants/doubles.dart';
import 'package:dr_doc/Constants/styles.dart';
import 'package:dr_doc/Screens/BookAppointment/BookAppointment.dart';
import 'package:dr_doc/Screens/DoctorProfile/SliverHeaderDelegate.dart';
import 'package:dr_doc/models/Doctor.dart';
import 'package:dr_doc/models/DoctorList.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  final Doctor doctor;
  const DoctorProfile({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var details = [
      Divider(
        height: 15,
      ),
      Text(
        "About Me",
        style: headingTextStyle,
      ),
      Divider(
        height: 5,
      ),
      Text(
        doctor.intro,
        style: infoTextStyle,
      ),
      Divider(
        height: 25,
      ),
      Text(
        "Qualifications",
        style: headingTextStyle,
      ),
      Divider(
        height: 5,
      ),
      Text(
        doctor.degree,
        style: infoTextStyle,
      ),
      Divider(
        height: 25,
      ),
      Text(
        "I specialize in",
        style: headingTextStyle,
      ),
      Divider(
        height: 5,
      ),
      Text(
        doctor.specialization,
        style: infoTextStyle,
      ),
      Divider(
        height: 25,
      ),
      Text(
        "Location",
        style: headingTextStyle,
      ),
      Divider(
        height: 5,
      ),
      Text(
        doctor.location,
        style: infoTextStyle,
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: kPrimaryColor,
              floating: true,
            ),
            SliverPersistentHeader(
              delegate: SliverHeaderDelegate(doctor),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                details,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookAppointment()),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(kCardRadius)),
              height: 60,
              child: Center(
                child: Text(
                  "Book Appointment",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
