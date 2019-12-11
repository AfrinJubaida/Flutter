import 'package:design/home.dart';
import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //margin: EdgeInsets.only(left: 10.0,right: 10.0),
        body: Container(
          padding: EdgeInsets.only(top: 50,right: 20,left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
                 IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
                  },
                ),

               Container(
                 width: 250,
                 height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    //width: 1,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Product",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
                    fillColor: Colors.grey[400],
                  ),
                ),
    ),
                   IconButton(
                     icon: Icon(Icons.clear),
                     onPressed: (){
                       Navigator.pop(context);
                     },
                   ),

               ],
           // ),
    ),
        ),
    );
  }
}
