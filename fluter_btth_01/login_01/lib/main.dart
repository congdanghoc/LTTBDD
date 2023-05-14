import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool keepMeSignedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300], // Màu nền xám
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 360.0,
              height: 390.0,
              color: Colors.white, // Màu nền trắng
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'SIGN IN YOUR ACCOUNT',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Checkbox(
                        value: keepMeSignedIn,
                        onChanged: (value) {
                          setState(() {
                            keepMeSignedIn = value!;
                          });
                        },
                      ),
                      Text('Keep me signed in'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Xử lý đăng nhập
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.purple), // Màu nền tím
                      ),
                      child: Text('Đăng nhập'),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () {
                      // Xử lý quên mật khẩu
                    },
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
