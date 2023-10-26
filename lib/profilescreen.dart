import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 4, // Add a shadow to the card
              margin: EdgeInsets.all(16), // Add margin around the card
              child: ListTile(
                leading: Image.network(
                  'https://cdn.cabincrewwings.com/wp-content/uploads/2021/11/Blue-American-Flag-Independence-Day-Instagram-Post.jpg',
                  width: 80, // Adjust the width of the image
                  height: 80, // Adjust the height of the image
                  fit: BoxFit.cover, // Make the image cover the whole space
                ),
                title: Text(
                  'Ayesha Saleem',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'ayesha24@gmail.com',
                  style: TextStyle(color: Colors.grey[500]), // Adjust text color
                ),
              ),
            ),
            Card(
              elevation: 4, // Add a shadow to the card
              margin: EdgeInsets.all(16), // Add margin around the card
              child: Column(
                children: [
                  _buildIconBox(Icons.person, 'Profile Detail'),
                  _buildIconBox(Icons.shopping_bag, 'My Order'),
                  _buildIconBox(Icons.favorite, 'My Favourites'),
                  _buildIconBox(Icons.directions_bus, 'Shipping Address'),
                  _buildIconBox(Icons.card_travel_sharp, 'My Card'),
                  _buildIconBox(Icons.settings, 'Settings'),
                ],
              ),
            ),
            Card(
              elevation: 4, // Add a shadow to the card
              margin: EdgeInsets.all(16), // Add margin around the card
              child: Column(
                children: [
                  _buildIconBox(Icons.format_quote_sharp, 'FAQs'),
                  _buildIconBox(Icons.security, 'Privacy Policy'),
                  _buildIconBox(Icons.shopping_cart, 'My Cart'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconBox(IconData icon, String text) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 238, 218, 218)), // Add a light border
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Icon(icon, color: Colors.grey),
        SizedBox(width: 16),
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(), // Add a spacer to push the arrow to the right
        Icon(Icons.arrow_forward_ios, color: Colors.grey), // Half arrow on the right side
      ],
    ),
  );
}


  Widget _buildText(String text) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

