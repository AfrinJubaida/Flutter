import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration (
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("image/aatik-tasneem.jpg"),
                    fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Chats',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            child: Icon(
              Icons.edit,
              color: Colors.black,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}