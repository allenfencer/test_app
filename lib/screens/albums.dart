import 'package:flutter/material.dart';
import 'package:test_app/global_widgets/albumTile.dart';

class Albums extends StatelessWidget {
  const Albums({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color(0xff191919),
          elevation: 0,
          leading: SizedBox(
            height: 0,
            width: 0,
          ),
          leadingWidth: 10,
          title: Text(
            'Albums',
            style: TextStyle(
                fontSize: 26, color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
        body: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, index) {
              return AlbumTile(
                title: 'Islands in the sun',
              );
            },
            separatorBuilder: (BuildContext context, index) {
              return SizedBox(
                height: 5,
              );
            },
            itemCount: 15));
  }
}
