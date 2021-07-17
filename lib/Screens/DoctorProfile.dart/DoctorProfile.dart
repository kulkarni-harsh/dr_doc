import 'package:dr_doc/Components/DoctorCard.dart';
import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/Screens/DoctorProfile.dart/SliverDelegate.dart';
import 'package:dr_doc/models/Doctor.dart';
import 'package:dr_doc/models/DoctorList.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  final Doctor doctor;
  const DoctorProfile({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: Delegate(doctor),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: docList.map((e) {
                return DoctorCard(doctor: e);
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: Container(
              height: 60,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Book Appointment",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
