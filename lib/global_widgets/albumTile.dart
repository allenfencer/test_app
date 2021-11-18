import 'package:flutter/material.dart';

class AlbumTile extends StatelessWidget {
  final String title;
  const AlbumTile({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 10),
      child: Container(
        height: 80,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          onTap: () {},
          tileColor: Color(0xff191919),
          title: Text(title,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white60)),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}
