import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
        centerTitle: true,
        title: Text("PRODUCT DETAIL",style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal
        ),),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset('image/story/product2.jpg'),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //const SizedBox(width: 16.0),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Text(
                          "AAAAA\n by someone",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          Row(
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.purple,
              ),
              Icon(
                Icons.star,
                color: Colors.purple,
              ),
              Icon(
                Icons.star,
                color: Colors.purple,
              ),
              Icon(
                Icons.star,
                color: Colors.purple,
              ),
              Icon(
                Icons.star_border,
                color: Colors.purple,
              ),
            ],
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                Icons.location_on,
                size: 25.0,
                color: Colors.grey,
              )),
              TextSpan(text: "Dhaka")
            ]),
            style: TextStyle(color: Colors.grey, fontSize: 18.0),
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              color: Colors.purple,
              textColor: Colors.white,
              child: Text(
                "Free to Use Now",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              onPressed: () {},
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "Description".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?",
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14.0),
          ),
          const SizedBox(height: 10.0),
          Text(
            "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?",
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14.0),
          ),
          //=======similar product section=====
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "See all Products".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
            ),
          ),
          //Padding(
            //padding: const EdgeInsets.all(1.0),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Product()));
              },
              child: Container(child:
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(
                        child: Card(
                          child:
                          Image(
                            image: AssetImage('image/story/product2.jpg'),
                          ),
                        )
                    ),
                    Expanded(
                      child: Card(
                          child:
                          Image(
                            image: AssetImage('image/story/product2.jpg'),
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
                            image:AssetImage('image/story/product2.jpg'),
                          )
                      ),
                    ),
                    Expanded(
                      child: Card(
                          child:
                          Image(
                            image : AssetImage('image/story/product2.jpg'),
                          )
                      ),
                    ),
                    Expanded(
                      child: Card(
                          child:
                          Image(
                            image:AssetImage('image/story/product2.jpg'),
                          )
                      ),
                    )
                  ],)
                ],
              )
                ,),
            ),
          //),
        ],
      ),
    );
  }
}
