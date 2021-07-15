import 'package:dr_doc/Constants/colors.dart';
import 'package:dr_doc/models/DoctorList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: docList
                .map((e) => Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.all(5),
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
                    ))
                .toList(),
          )
        ],
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
