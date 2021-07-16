import 'package:dr_doc/Constants/doubles.dart';
import 'package:flutter/material.dart';

class NewsPageView extends StatefulWidget {
  const NewsPageView({Key? key}) : super(key: key);

  @override
  _NewsPageViewState createState() => _NewsPageViewState();
}

class _NewsPageViewState extends State<NewsPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: kNewsPageViewHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kCardRadius),
        ),
        child: PageView(
          children: [
            Container(
              height: kNewsPageViewHeight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kCardRadius),
                  color: Colors.red),
            ),
            Container(
              height: kNewsPageViewHeight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kCardRadius),
                  color: Colors.green),
            ),
          ],
        ));
  }
}
