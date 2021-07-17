import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/Constants/doubles.dart';
import 'package:dr_doc/Screens/DoctorProfile/DoctorProfile.dart';
import 'package:dr_doc/models/Doctor.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  const DoctorCard({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(
        left: 6,
      ),
      duration: Duration(seconds: 2),
      child: GestureDetector(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorProfile(
                    doctor: doctor,
                  ),
                ),
              ),
          child: Stack(
            children: [
              Positioned(
                top: 40,
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(kCardRadius)),
                  height: 130,
                  width: 185,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "${doctor.name}",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${doctor.specialization}",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.location_on_outlined,
                            color: kPrimaryColor,
                            size: 15,
                          )),
                          TextSpan(
                              text: "${doctor.location}",
                              style: TextStyle(color: kPrimaryColor)),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 1,
                right: 1,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(
                    doctor.urlToImage,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
