import 'package:flutter/material.dart';
import 'package:websiteui/Successfulscreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '𝒇𝒂𝒔𝒉𝒊𝒐𝒏𝒔',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('𝑀𝑦 𝐿𝑖𝑓𝑒 𝑀𝑦 𝑆𝑡𝑦𝑒'),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SignUp',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Create a new account'),
                  SizedBox(height: 20),
                ],
              ),
            ),
            TextField(
              controller: _userNameController,
              decoration: InputDecoration(
                labelText: 'User Name',
                suffixIcon: Icon(Icons.check_circle),
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                suffixIcon: Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Checkbox(value: false, onChanged: (bool? value) {}),
                Text('By creating an account, you agree to our terms & conditions.',
                style: TextStyle(
                    color: Color.fromARGB(176, 59, 56, 56),
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
              // Navigate to the successful screen if login is successful
              Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => SuccessfulScreen()),
              );

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}