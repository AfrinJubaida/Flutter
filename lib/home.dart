import 'package:design/Menu.dart';
import 'package:design/Search.dart';
import 'package:design/profile/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:design/message/home_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 50,right: 20,left: 20,bottom: 10),
            child: Row(
              //change
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    //decoration: BoxDecoration(
                      //  borderRadius: BorderRadius.circular(50),
                        //color: Colors.grey[200]
                    //),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //change
                        hintStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'Aveny'),
                        hintText: "MY APP"
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30,), //change 20 to 30
                //Icon(Icons.search,color: Colors.grey[800],size: 30, ),
                //onTap(){},
                IconButton(
                  icon: Icon(Icons.search, size: 30,color: Colors.grey[600],),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new Search()));
                  },

                ),
                IconButton(
                    icon: Icon(Icons.chat,color: Colors.grey[800],size: 30,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomeScreen()));
                },
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                //child: Padding(
                  //padding: EdgeInsets.all(20),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          height: 150.0,
                          child: Card(
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  child: new Row(
                                    children: <Widget>[
                                      new Container(
                                        width:50.0,
                                        height: 50.0,
                                        margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                        decoration: BoxDecoration (
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: AssetImage("image/aatik-tasneem.jpg"),
                                                fit: BoxFit.cover)
                                        ),
                                      ),
                                      new Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        width: 200.0,
                                        child: new TextField(
                                          decoration: InputDecoration(
                                              hintText: " What's on your mind?"
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                new Container(
                                  margin: EdgeInsets.only(top: 35.0,left: 10.0,right: 10.0),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      option("Live", Icons.videocam,Colors.red),
                                      option("Photo", Icons.photo,Colors.green),
                                      option("Check in", Icons.location_on,Colors.red)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text("Stories", style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1.2),
                          ),
                          Text("See Archive"),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makestory(storyImage: 'image/story/story-1.jpg',
                                userImage: 'image/aatik-tasneem.jpg',
                                userName: 'Aatik-Tasneem'),
                            makestory(storyImage: 'image/story/story-2.jpg',
                                userImage: 'image/aiony-haust.jpg',
                                userName: 'Aiony-Haust'),
                            makestory(storyImage: 'image/story/story-3.jpg',
                                userImage: 'image/averie-woodard.jpg',
                                userName: 'Averie-Woodard'),
                            makestory(storyImage: 'image/story/story-4.jpg',
                                userImage: 'image/foto-sushi.jpg',
                                userName: 'Foto-Shushi'),
                            makestory(storyImage: 'image/story/story-5.jpg',
                                userImage: 'image/lucas-sankey.jpg',
                                userName: 'Lucas-Sankey'),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      makefeed(
                        userName: 'Aiony-Haust',
                        userImage: 'image/aiony-haust.jpg',
                        feedTime: '1 hr ago',
                        feedText: 'All the ...',
                        feedImage: 'image/story/story-2.jpg',
                      ),
                      makefeed(
                        userName: 'Aiony-Haust',
                        userImage: 'image/aatik-tasneem.jpg',
                        feedTime: '3min ago',
                        feedText: 'All the ...',
                        feedImage: 'image/story/story-1.jpg',
                      ),
                    ],
                  ),
                ),
              ),
          //)
        ],
      ),
      //drawer: new Drawer(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
              }),
              IconButton(icon: Icon(Icons.person_pin), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new UserProfile()));
              }),
              IconButton(icon: Icon(Icons.notifications), onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomeScreen()));
              }),
              IconButton(icon: Icon(Icons.menu), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Menu()));
              })
            ],
          ),
        ),
        color: Colors.grey[300],
        elevation: .3,
      ),
    );
  }

  Widget makestory({storyImage , userImage , userName}){
    return AspectRatio(
      aspectRatio: 1.6/2,
      child: Container(
        margin: EdgeInsets.only(right: 10,left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(storyImage),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors:[
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white,width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
  Widget makefeed({userName, userImage, feedTime, feedText, feedImage}){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children:<Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userImage),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(userName,
                        style: TextStyle(color:Colors.grey[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1 ),
                      ),
                      SizedBox(height: 3,),
                      Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_horiz, size: 30,color: Colors.grey[600],),
                onPressed: (){},
              )
            ],
          ),
          SizedBox(height: 20,),
          Text(feedText,style: TextStyle(fontSize: 15, color: Colors.grey[800],height: 1.5,letterSpacing: 1),),
          SizedBox(height: 20,),
          feedImage !='' ?
          Container(
            height: 200,
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(feedImage),
                    fit: BoxFit.cover
                )
            ) ,
          ): Container(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  makelike(),
                  Transform.translate(
                      offset: Offset(-5,0),
                      child: makelove()),
                  SizedBox(width: 5,),
                  Text("2.5k",style: TextStyle(fontSize: 15,color: Colors.grey[800]),)
                ],
              ),
              Text("400 Comments",style: TextStyle(fontSize: 13,color: Colors.grey[800]),)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(true),
              makeCommentButton(),
              makeShareButton()
            ],
          )
        ],
      ),
    );
  }
  Widget makelike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.thumb_up,size: 12,color: Colors.white,),
      ),
    );
  }

  Widget makelove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.favorite,size: 12,color: Colors.white,),
      ),
    );
  }

  Widget makeLikeButton(isActive){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
        border:Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive? Colors.blue: Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("Like",style: TextStyle(color: isActive? Colors.blue: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
        border:Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color:  Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("Comment",style: TextStyle(color:  Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
        border:Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color:  Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("Share",style: TextStyle(color:  Colors.grey),)
          ],
        ),
      ),
    );
  }
 option(text,icon,color){
    return  new Container(
      child: new Row(
        children: <Widget>[
         new Container(
           child: new Icon(icon,color: color ,),
         ) ,
          new Container(
            child: new Text(text),
          )
        ],
      ),
    );
  }
}