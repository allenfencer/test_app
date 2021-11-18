import 'package:flutter/material.dart';
import 'package:test_app/screens/homepage.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => HomePage()));
        },
        child: Container(
          height: 45,
          width: 200,
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff57B65F),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
