import 'package:flutter/material.dart';

class TextContainers extends StatefulWidget {
  final String title;
  final String hintText;
  final int minLines;
  final int maxLines;
  const TextContainers({Key key, this.title, this.hintText, this.minLines,this.maxLines})
      : super(key: key);

  @override
  _TextContainersState createState() => _TextContainersState();
}

class _TextContainersState extends State<TextContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            style: TextStyle(fontSize: 20, color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            cursorHeight: 25,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey[400]),
                filled: true,
                fillColor: Color(0xff414141)),
          ),
        ],
      ),
    );
  }
}
