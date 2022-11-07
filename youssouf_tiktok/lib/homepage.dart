import 'package:flutter/material.dart';
import 'package:youssouf_tiktok/customIcon.dart';
import 'package:youssouf_tiktok/pages/Accueil.dart';
import 'package:youssouf_tiktok/pages/boite_de_reception.dart';
import 'package:youssouf_tiktok/pages/decouvrir.dart';
import 'package:youssouf_tiktok/pages/plus.dart';
import 'package:youssouf_tiktok/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    AccueilPage(),
    BoitePage(),
    RecherchePage(),
    plusPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Decouvrir'),
          // BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ''),
          BottomNavigationBarItem(
            icon: CustomIcon(),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_rounded),
              label: 'Boite de reception'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Moi'),
        ],
      ),
    );
  }
}
