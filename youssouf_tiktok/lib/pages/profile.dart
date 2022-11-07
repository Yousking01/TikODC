import 'package:flutter/material.dart';
import 'package:youssouf_tiktok/util/profiletab_1.dart';
import 'package:youssouf_tiktok/util/profiletab_2.dart';
import 'package:youssouf_tiktok/util/profiletab_3.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text('Oumou YATT', style: TextStyle(color: Colors.black)),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //profile photo
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),

            //username
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                '@YoussoufDjire',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            //number of following, followers, likes
            Row(
              //to be the row in the center
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(
                          '38',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          '3234',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          '7000',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Likes ',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),

            //buttom-> edit profile, insta links, bookmark
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text(
                    'Modifier Profil',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            //bio
            Text(
              'Bio ici',
              style: TextStyle(color: Colors.grey),
            ),

            //default tab controller
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.favorite, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
