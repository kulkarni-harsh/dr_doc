import 'package:dr_doc/Components/DoctorCard.dart';
import 'package:dr_doc/Components/HomePageBanner.dart';
import 'package:dr_doc/Components/NewsPageView.dart';
import 'package:dr_doc/Components/SquareCard.dart';
import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/Screens/SearchPage/SearchPage.dart';
import 'package:dr_doc/models/Doctor.dart';
import 'package:dr_doc/models/DoctorList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              elevation: 50,
              shadowColor: kPrimaryColor,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                "Dr. Doc",
                style: TextStyle(color: kPrimaryColor),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: HomePageBanner(),
            ),
            SliverToBoxAdapter(
                child: Divider(
              height: 20,
            )),
            SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  SquareCard(
                    callFunction: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage())),
                  ),
                  SquareCard(
                    callFunction: () {},
                  ),
                ]),
            SliverToBoxAdapter(
                child: Divider(
              height: 20,
            )),
            SliverToBoxAdapter(
              child: NewsPageView(),
            ),
            SliverToBoxAdapter(
                child: Divider(
              height: 20,
            )),
            SliverGrid.count(
              crossAxisCount: 2,
              children: docList.map((e) {
                return DoctorCard(doctor: e);
              }).toList(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 2, color: kPrimaryColor),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.manage_accounts,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
