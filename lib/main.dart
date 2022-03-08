// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_import, constant_identifier_names, prefer_final_fields, unused_field, prefer_const_constructors_in_immutables

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Constants.dart';
import 'package:movieapp/screens/MovieListScreen.dart';

import 'Navigation/navigator_keys.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigatorKeys.navigatorKeyMain,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  GlobalKey<NavigatorState> _navigatorKey() {
    switch (_selectedIndex) {
      case 0:
        return NavigatorKeys.bottomNavigationBarFirstItem;
      case 1:
        return NavigatorKeys.bottomNavigationBarSecondItem;
      default:
        return NavigatorKeys.bottomNavigationBarThirdtItem;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MovieListScreen(
        navigatorKey: _navigatorKey(),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30.0,
          backgroundColor: Constants.colorLikeBlack,
          selectedItemColor: Constants.colorWhite,
          unselectedItemColor: Constants.colorGray,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.home_rounded,
                  color: Constants.colorWhite,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.home_rounded,
                  color: Constants.colorGray,
                ),
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.explore_rounded,
                  color: Constants.colorGray,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.explore_rounded,
                  color: Constants.colorWhite,
                ),
              ),
              label: 'Watch',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.shopping_cart_rounded,
                  color: Constants.colorGray,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.shopping_cart_rounded,
                  color: Constants.colorWhite,
                ),
              ),
              label: 'Media Library',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.shopping_cart_rounded,
                  color: Constants.colorGray,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.shopping_cart_rounded,
                  color: Constants.colorWhite,
                ),
              ),
              label: 'More',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
