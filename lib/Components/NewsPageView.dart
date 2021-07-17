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
          controller: PageController(
            viewportFraction: 0.8,
            initialPage: 0,
          ),
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: kNewsPageViewHeight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kCardRadius),
                  color: Colors.red),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: kNewsPageViewHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kCardRadius),
                  color: Colors.green,
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: kNewsPageViewHeight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kCardRadius),
                  color: Colors.blue),
            ),
          ],
        ));
  }
}
