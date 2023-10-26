import 'package:flutter/material.dart';
import 'package:websiteui/homescreen.dart';
import 'package:websiteui/cartscreen.dart';
import 'package:websiteui/notificationscreen.dart';
import 'package:websiteui/profilescreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedTab = 0;

  List<Widget> _pages = [
    Center(
    child:  HomeView(),
    ),
    Center(
     child:  CartView(),
    ),
    Center(
      child:  NotifView(),
    ),
    Center(
      child:  ProfileView(),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(), // Customize the app bar
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black, // Change the selected item color to black
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black), // Home icon in black
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black), // Cart icon in black
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black), // Notification icon in black
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black), // Profile icon in black
            label: "Profile",
          ),
        ],
      ),
    );
  }

// Customize the app bar based on the selected tab
AppBar _buildAppBar() {
  if (_selectedTab == 0) {
    // Home Tab
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.black), // Menu icon on the left
        onPressed: () {
         // Navigate to the home screen
              Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => HomeView()),
              );   
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.black), // Search icon on the right
          onPressed: () {
            // Add your action for the search icon here
          },
        ),
      ],
    );
  } else if (_selectedTab == 1) {
    // Cart Tab
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black), // Back icon in black on the left
        onPressed: () {
          // Navigate to the cart screen
              Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => CartView()),
              );   
        },
      ),
    );
  } else if (_selectedTab == 2) {
    // Notification Tab
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black), // Back icon in black on the left
        onPressed: () {
           // Navigate to the Notification screen
              Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => CartView()),
              ); 
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.more_horiz, color: Colors.black), // Three dots icon on the right
          onPressed: () {
            // Add your action for the three dots icon here
          },
        ),
      ],
    );
  } else {
    // Profile Tab
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black), // Back icon in black on the left
        onPressed: () {
          // Navigate to the profile screen
              Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => ProfileView()),
              ); 
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.settings, color: Colors.black), // Settings icon on the right
          onPressed: () {
            // Add your action for the settings icon here
          },
        ),
      ],
    );
  }
}


}
