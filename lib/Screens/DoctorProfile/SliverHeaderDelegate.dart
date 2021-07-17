import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/models/Doctor.dart';
import 'package:flutter/material.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Doctor doctor;

  SliverHeaderDelegate(this.doctor);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 500,
              child: Image.asset(
                "lib/assets/images/profilebg.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 30,
            left: 30,
            right: 30,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(doctor.urlToImage),
            ),
          ),
          Positioned(
            bottom: 2,
            left: 0,
            right: 0,
            child: Text(
              doctor.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 420;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
