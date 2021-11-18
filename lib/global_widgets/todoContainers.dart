import 'package:flutter/material.dart';

class TodoContainer extends StatelessWidget {
  final String title;
  final String status;
  const TodoContainer({Key key, this.title, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        minVerticalPadding: 10,
        contentPadding: EdgeInsets.all(20),
        tileColor: Color(0xff191919),
        title: Text(
          title,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        subtitle: Text(status,
            style: TextStyle(
                fontSize: 18,
                color: status == 'Completed' ? Color(0xff57B65F) : Colors.red)),
      ),
    );
  }
}
