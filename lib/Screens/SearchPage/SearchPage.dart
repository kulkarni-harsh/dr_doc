import 'package:dr_doc/Components/DoctorCard.dart';
import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/models/DoctorList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              elevation: 50,
              expandedHeight: 90,
              collapsedHeight: 60,
              shadowColor: kPrimaryColor,
              backgroundColor: kPrimaryColor,
              centerTitle: true,
              title: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  labelText: 'Enter Doctor Name /Specialization',
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 20,
            )),
            SliverGrid.count(
              crossAxisCount: 2,
              children: docList.map((e) {
                return DoctorCard(doctor: e);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
