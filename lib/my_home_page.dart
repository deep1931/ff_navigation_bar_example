import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar_example/tabs/about_tab.dart';
import 'package:ff_navigation_bar_example/tabs/category_tab.dart';
import 'package:ff_navigation_bar_example/tabs/home_tab.dart';
import 'package:ff_navigation_bar_example/tabs/notification_tab.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _listScreens = [
    HomeTab(),
    CategoryTab(),
    AboutTab(),
    NotificationTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FF Navigation Bar Lib Example'),
      ),
      body: _listScreens[_selectedIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.yellow,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
        ),
        selectedIndex: _selectedIndex,
        onSelectTab: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.category,
            label: 'Category',
          ),
          FFNavigationBarItem(
            iconData: Icons.info,
            label: 'About Us',
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
