import 'package:flutter/material.dart';
import 'package:websiteui/loginscreen.dart';
import 'package:websiteui/signupscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool loginButtonPressed = false;
  bool signupButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://images.pexels.com/photos/2584269/pexels-photo-2584269.jpeg?cs=srgb&dl=pexels-ali-pazani-2584269.jpg&fm=jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '𝒇𝒂𝒔𝒉𝒊𝒐𝒏𝒔',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  '𝑀𝑦 𝐿𝑖𝑓𝑒 𝑀𝑦 𝑆𝑡𝑦𝑙𝑒',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Login button 
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: loginButtonPressed ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: InkWell(
                      onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen()));
                  },
                    onTapDown: (details) {
                      setState(() {
                        loginButtonPressed = true;
                      });
                    },
                    onTapUp: (details) {
                      setState(() {
                        loginButtonPressed = false;
                      });
                    },
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: loginButtonPressed ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                // Signup
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: signupButtonPressed ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignupScreen()));
                    },
                    onTapDown: (details) {
                      setState(() {
                        signupButtonPressed = true;
                      });
                    },
                    onTapUp: (details) {
                      setState(() {
                        signupButtonPressed = false;
                      });
                    },
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          color: signupButtonPressed ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
