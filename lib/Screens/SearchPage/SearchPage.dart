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
            SliverGrid.count(
              crossAxisCount: 2,
              children: docList.map((e) {
                return AnimatedContainer(
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.1),
                    border: Border(
                      bottom: BorderSide(width: 1, color: kPrimaryColor),
                    ),
                  ),
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(5),
                  duration: Duration(seconds: 2),
                  child: GestureDetector(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(e.urlToImage == null
                                ? "https://source.unsplash.com/random"
                                : "${e.urlToImage}"),
                          ),
                        ),
                        Text(
                          "${e.name}",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
