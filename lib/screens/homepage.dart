import 'package:flutter/material.dart';
import 'package:test_app/screens/albums.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/profile.dart';
import 'package:test_app/screens/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool isSelected = false;
  List screens = [
    Home(),
    Albums(),
    Todo(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0 && isSelected == false) {
              isSelected = true;
            } else {
              isSelected = false;
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Colors.white,
        iconSize: 25,
        backgroundColor: Colors.grey[800].withOpacity(0.3),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Container(
                height: 30,
                child: Image.asset(isSelected
                    ? 'assets/test_app_icon.png'
                    : 'assets/test_app_iconG.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Albums',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Todo List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
