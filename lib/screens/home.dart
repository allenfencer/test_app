import 'package:flutter/material.dart';
import 'package:test_app/global_widgets/post.dart';
import 'package:test_app/screens/newPost.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff191919),
        elevation: 0,
        leading: SizedBox(
          height: 0,
          width: 0,
        ),
        leadingWidth: 10,
        title: Text(
          'Posts',
          style: TextStyle(
              fontSize: 26, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Post(
            title: 'Enhanced Clean',
            body:
                'This host committed to Airbnb\'s 5-step enhanced cleaning process. Show more',
          ),
          Post(
            title: 'Enhanced Clean',
            body:
                'This host committed to Airbnb\'s 5-step enhanced cleaning process. Show more',
          ),
          Post(
            title:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            body:
                'This host committed to Airbnb\'s 5-step enhanced cleaning process. Show more',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => NewPost()));
        },
        backgroundColor: Color(0xff57B65F),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
