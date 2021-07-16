import 'package:flutter/material.dart';

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              "Meet Out Dcotrs",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Image.asset("lib/assets/images/doctor.png", fit: BoxFit.fill)
        ],
      ),
    );
  }
}
