import 'package:flutter/material.dart';
import 'navigationscreen.dart';

class SuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle,
              size: 90,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text(
              'Successful!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You have successfully registered in our app and can start using it.',
              style: TextStyle(
                fontSize: 21, color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 150),
           Container(
             width: 400,
             height: 70, 
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(25),  // Adjust the radius to make it round
            ),
           child: ElevatedButton(
           onPressed: () {
           // Navigate to the successful screen if login is successful
              Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => BottomNavigation()),
              );          
        },
      style: ElevatedButton.styleFrom(
      primary: Colors.black, // Black color for the button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25), // Matches the container's border radius
      ),
    ),
        child: Text('Start Shopping'),
       ),
     ),

          ],
        ),
      ),
    );
  }
}
