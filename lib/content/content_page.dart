import 'package:flutter/material.dart';
import 'package:login_app/content/chat/chat_screen.dart';
import 'package:login_app/content/home/home_screen.dart';
import 'package:login_app/content/location/location_screen.dart';
import 'package:login_app/content/social/social_screen.dart';
import 'package:login_app/content/state/states_screen.dart';
import 'package:login_app/widgets/appbar.dart';

class ContentPage extends StatefulWidget {
  static const routeName = '/content';

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetsOptions = <Widget>[
    StatesScreen(),
    SocialScreen(),
    HomeScreen(),
    LocationScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        picUrl: 'https://uifaces.co/our-content/donated/gPZwCbdS.jpg',
        tile: const Text("Madam Makeup"),
      ),
      body: _widgetsOptions.elementAt(_selectedIndex),
      // Content screen navbar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lightbulb_outline_rounded,
              color: Colors.pink,
              key: Key("statesSection"),
            ),
            label: 'Estados',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_outlined,
              key: Key("socialSection"),
              color: Colors.pink,
            ),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.public_outlined,
              key: Key("Section"),
              color: Colors.pink,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
              key: Key("locationSection"),
              color: Colors.pink,
            ),
            label: 'Ubicación',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.pink,
            ),
            label: 'Mensajes',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.pink,
      ),
    );
  }
}
