import 'package:flutter/material.dart';

class FriendsProfile extends StatefulWidget {
  @override
  _FriendsProfileState createState() => _FriendsProfileState();
}

class _FriendsProfileState extends State<FriendsProfile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: null,
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
                          image: DecorationImage(image: AssetImage("image/aiony-haust.jpg"),
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
                            image: DecorationImage(image: AssetImage("image/aiony-haust.jpg"),
                                fit: BoxFit.cover),
                            border: Border.all(
                                color: Colors.white,
                                width: 6.0
                            )
                        ),
                      ),
                    ),
                  ],)
                ,
              ),


              Container(
                alignment: Alignment.bottomCenter,
                height: 130.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Aiony', style: TextStyle(
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
                        IconButton(
                          icon: Icon(Icons.collections,color: Colors.blueAccent),
                        ),
                        Text('following',style: TextStyle(
                            color: Colors.blueAccent
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.message,color: Colors.black),
                        ),
                        Text('Message',style: TextStyle(
                            color: Colors.black
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.more_vert,color: Colors.black),
                          onPressed: (){
                            _showMoreOption(context);
                          },
                        ),
                        Text('More',style: TextStyle(
                            color: Colors.black
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Icon(Icons.work),
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
                      Icon(Icons.work),
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
                      Icon(Icons.school),
                      SizedBox(width: 5.0,),
                      Text('Studied Computer Science at',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                    ],),
                    Wrap(
                      children: <Widget>[
                        Text('Abc University',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),

                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.home),
                      SizedBox(width: 5.0,),
                      Text('Lives in',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('Dhaka',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],),


                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.location_on),
                      SizedBox(width: 5.0,),
                      Text('From',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('Dhaka',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],),



                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.list),
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
                        child: RaisedButton(
                          child: Text('see more about Aiony'),
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
                        child: Text('Photos',style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),)),

                    Container(child:
                    Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Expanded(
                              child: Card(
                                child:
                                Image(
                                  image: AssetImage('image/story/story-1.jpg'),
                                   ),
                              )
                          ),
                          Expanded(
                              child: Card(
                                child:
                                Image(
                                  image: AssetImage('image/story/story-2.jpg'),
                              )
                            ),
                          ),
                        ],
                        ),
                        Row(children: <Widget>[
                          Expanded(
                              child: Card(
                                child:
                                Image(
                                image:AssetImage('image/story/story-3.jpg'),
                              )
                            ),
                          ),
                          Expanded(
                              child: Card(
                                child:
                                Image(
                                  image : AssetImage('image/story/story-4.jpg'),
                                )
                              ),
                          ),
                          Expanded(
                              child: Card(
                                child:
                                Image(
                                    image:AssetImage('image/story/story-5.jpg'),
                                )
                              ),
                          )
                        ],)
                      ],
                    )
                      ,)




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
                Icon(Icons.feedback,
                  color: Colors.black,),
                SizedBox(width: 10.0,),
                Text('Give feedback or report this profile',
                  style: TextStyle(
                      fontSize: 18.0
                  ),)
              ],),),


            Container(
              padding: EdgeInsets.all(10.0),
              child:
              Row(children: <Widget>[
                Icon(Icons.block,
                  color: Colors.black,),
                SizedBox(width: 10.0,),
                Text('Block',
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
                Text('Copy link to profile',
                  style: TextStyle(
                      fontSize: 18.0
                  ),
                )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10.0),
              child:
              Row(children: <Widget>[
                Icon(Icons.search,
                  color: Colors.black,),
                SizedBox(width: 10.0,),
                Text('Search Profile',
                  style: TextStyle(
                      fontSize: 18.0
                  ),)
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
