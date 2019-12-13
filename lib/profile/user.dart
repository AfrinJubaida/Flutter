import 'package:design/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        centerTitle: true,
        title: Text("AATIK TASNEEM",style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            fontWeight: FontWeight.normal
        ),),
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              Container(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(child:
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("image/aatik-tasneem.jpg"),
                                fit: BoxFit.cover)
                        ),
                      ),)
                    ],
                    ),
                    Positioned(
                      top: 100.0,
                      child: Container(
                        height: 190.0,
                        width: 190.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("image/aatik-tasneem.jpg"),
                                fit: BoxFit.cover),
                            border: Border.all(
                                color: Colors.white,
                                width: 6.0
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                alignment: Alignment.bottomCenter,
                height: 130.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Aatik', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0
                    ),),
                    SizedBox(width: 5.0,),
                    Icon(Icons.check_circle, color: Colors.blueAccent,)
                  ],
                ),
              ),
              SizedBox(height: 12.0,),
              Container(
                  child: Text('Software Enginner', style: TextStyle(fontSize: 18.0),)
              ),
              SizedBox(height: 10.0,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                         MaterialButton(
                          minWidth: 250.0,
                          color: Colors.blue,
                          child: new Text('Add Story',
                              style: new TextStyle(fontSize: 12.0, color: Colors.white)),
                          onPressed: () {},
                        ),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.more_horiz,color: Colors.grey),
                          onPressed: (){
                            _showMoreOption(context);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Icon(Icons.work,color: Colors.grey,),
                      SizedBox(width: 5.0,),
                      Text('Founder and CEO at',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('S',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],),
                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.work,color: Colors.grey,),
                      SizedBox(width: 5.0,),
                      Text('Works at',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('S',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],),
                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.school,color: Colors.grey,),
                      SizedBox(width: 5.0,),
                      Text('Studied Computer Science at',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),

                        Text('Abc University',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                     ],
                    ),

                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.home,color: Colors.grey,),
                      SizedBox(width: 5.0,),
                      Text('Lives in',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('Dhaka',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                    ),

                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.location_on,color: Colors.grey,),
                      SizedBox(width: 5.0,),
                      Text('From',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('Dhaka',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                    ),

                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.list,color: Colors.grey,),
                      SizedBox(width: 5.0,),
                      Text('Followed by',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('100K people',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],),
                    SizedBox(height: 20.0,),
                    Row(children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          minWidth: 150.0,
                          color: Colors.blue[100],
                          child: new Text('Edit Public Details',
                              style: new TextStyle(fontSize: 12.0, color: Colors.blue[800])),
                          onPressed: () {},
                        ),
                      )
                    ],),

                    Container(
                      height: 10.0,
                      child:
                      Divider(
                        color: Colors.grey,
                      ),
                    ),

                    Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 10),
                        child: Text('Friends',style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),)),

                    Container(child:
                    Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          makefriend(
                                    userImage: 'image/aiony-haust.jpg',
                                    userName: 'Aiony-Haust'),
                          makefriend(
                              userImage: 'image/aiony-haust.jpg',
                              userName: 'Aiony-Haust'),

                        ],
                        ),
                        Row(children: <Widget>[
                          makefriend(
                              userImage: 'image/aiony-haust.jpg',
                              userName: 'Aiony-Haust'),
                          makefriend(
                              userImage: 'image/aiony-haust.jpg',
                              userName: 'Aiony-Haust'),
                          makefriend(
                              userImage: 'image/aiony-haust.jpg',
                              userName: 'Aiony-Haust'),
                        ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(children: <Widget>[
                          Expanded(
                            child: MaterialButton(
                              minWidth: 150.0,
                              color: Colors.grey,
                              child: new Text('See All Friends',
                                  style: new TextStyle(fontSize: 12.0, color: Colors.black)),
                              onPressed: () {},
                            ),
                          )
                        ],),
                        Container(
                          height: 10.0,
                          child:
                          Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.grey[200]),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.photo_album,color: Colors.grey,),
                                SizedBox(width: 5,),
                                Text("Photos",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    ),
                    Container(
                      height: 10.0,
                      child:
                      Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }



  _showMoreOption(cx) {
    showModalBottomSheet(
      context: cx,
      builder: (BuildContext bcx) {

        return new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child:
              Row(children: <Widget>[
                Icon(Icons.edit,
                  color: Colors.grey,),
                SizedBox(width: 10.0,),
                Text('Edit Profile',
                  style: TextStyle(
                      fontSize: 18.0
                  ),)
              ],),),


            Container(
              padding: EdgeInsets.all(10.0),
              child:
              Row(children: <Widget>[
                Icon(Icons.visibility,
                  color: Colors.grey,),
                SizedBox(width: 10.0,),
                Text('Review Timeline',
                  style: TextStyle(
                      fontSize: 18.0
                  ),)
              ],),),



            Container(
              padding: EdgeInsets.all(10.0),
              child:
              Row(children: <Widget>[
                Icon(Icons.link,
                  color: Colors.black,),
                SizedBox(width: 10.0,),
                Text('Copy your profile link',
                  style: TextStyle(
                      fontSize: 18.0
                  ),)
                ],
              ),
            ),
          ],
        );
      },
    );
  }


  Widget makefriend({ userImage , userName}){
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FriendsProfile(),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.only(right: 10,left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
      ),
    );
  }
}
