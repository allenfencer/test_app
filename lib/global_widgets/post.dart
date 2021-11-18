import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String title;
  final String body;
  const Post({Key key, this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 10),
        dense: false,
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            body,
            style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.w400,
                fontSize: 18,
                wordSpacing: 1),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
