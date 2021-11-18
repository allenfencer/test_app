import 'package:flutter/material.dart';
import 'package:test_app/global_widgets/customButton.dart';
import 'package:test_app/global_widgets/textContainers.dart';

class NewPost extends StatelessWidget {
  const NewPost({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff191919),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        title: Text(
          'Create Post',
          style: TextStyle(
              fontSize: 26, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              TextContainers(
                title: 'Title',
                minLines: 1,
              ),
              SizedBox(
                height: 45,
              ),
              TextContainers(
                title: 'Post',
                minLines: 5,
                maxLines: 15,
              ),
              SizedBox(height: 50),
              CustomButton(
                text: 'Submit Post',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
