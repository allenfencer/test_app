import 'package:flutter/material.dart';
import 'package:test_app/global_widgets/customButton.dart';
import 'package:test_app/global_widgets/textContainers.dart';
import 'package:test_app/screens/homepage.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObscured = false;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Login',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        width: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            TextContainers(
              title: 'Email',
              hintText: 'example@gmail.com',
              minLines: 1,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Password',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              style: TextStyle(fontSize: 20, color: Colors.white),
              keyboardType: TextInputType.visiblePassword,
              cursorHeight: 25,
              obscureText: isObscured,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscured = !isObscured;
                      });
                    },
                    icon: Icon(
                      isObscured ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'password',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey[400]),
                  filled: true,
                  fillColor: Color(0xff414141)),
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}
