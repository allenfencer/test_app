import 'package:flutter/material.dart';
import 'package:test_app/global_widgets/userDataCard.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Color(0xff191919),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundColor: Colors.grey[800],
            child: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            radius: 40,
          ),
        ),
        title: Text(
          'User Profile',
          style: TextStyle(
              fontSize: 26, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserDataCard(
                cardHeading: 'Basic Information',
                detail1: 'Name',
                detatil1Title: 'Shishir Asthana',
                detail2: 'Email Address',
                detail2Title: 'shishir@gmail.com',
                detail3: 'Phone no.',
                detail3Title: '236547385',
                detail4: 'Website',
                detail4Title: 'hilde.org',
                detail5Title: 'Romaguera-Crona',
                detail5: 'Company',
              ),
              SizedBox(
                height: 25,
              ),
              UserDataCard(
                cardHeading: 'Address Information',
                detail1: 'Street',
                detatil1Title: 'Kulas Light',
                detail2: 'Suite',
                detail2Title: 'Apt. 556',
                detail3: 'City',
                detail3Title: 'Gwen Borough',
                detail4: 'Zipcode',
                detail4Title: '13001',
                detail5Title: '',
                detail5: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
