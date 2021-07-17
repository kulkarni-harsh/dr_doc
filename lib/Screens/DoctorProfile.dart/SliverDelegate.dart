import 'package:dr_doc/models/Doctor.dart';
import 'package:flutter/material.dart';

class Delegate extends SliverPersistentHeaderDelegate {
  final Doctor doctor;

  Delegate(this.doctor);

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
            top: 5,
            bottom: 20,
            left: 20,
            right: 20,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(doctor.urlToImage),
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
