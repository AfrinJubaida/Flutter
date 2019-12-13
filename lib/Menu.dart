import 'package:design/Search.dart';
import 'package:design/product.dart';
import 'package:design/profile/user.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            child: Row(
              //change
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Aveny'),
                          hintText: "MENU"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ), //change 20 to 30
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Search()));
                  },
                ),
              ],
            ),
          ),
          new ListTile(
            title: Text("Profile "),
            leading: Icon(Icons.person_pin,color: Colors.blue,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new UserProfile()));
            },
          ),
          new Divider(),
          new ListTile(
            title: Text("Product"),
            leading: Icon(Icons.shopping_basket,color: Colors.blue,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new Product()));
            },
          ),
          new Divider(),
          new ListTile(
            title: Text("Settings "),
            leading: Icon(Icons.settings,color: Colors.blue,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new UserProfile()));
            },
          ),
          new Divider(),
          new ListTile(
            title: Text("Log Out"),
            leading: Icon(Icons.done_outline,color: Colors.blue,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new UserProfile()));
            },
          ),
        ],
      ),
    );
  }
}
