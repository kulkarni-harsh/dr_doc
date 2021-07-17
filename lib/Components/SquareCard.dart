import 'package:dr_doc/Constants/doubles.dart';
import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget {
  final VoidCallback callFunction;
  const SquareCard({
    Key? key,
    required this.callFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callFunction,
      child: Container(
          margin: EdgeInsets.only(left: 4),
          child: Stack(
            children: [
              Positioned(
                top: 30,
                child: Container(
                  height: 140,
                  width: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kCardRadius),
                    color: Colors.blue,
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 20,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.red,
                  )),
            ],
          )),
    );
  }
}
