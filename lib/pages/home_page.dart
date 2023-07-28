import 'package:flutter/material.dart';
import 'package:social_media_app/model/user.dart';

import '../model/post.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF26A69A),
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        elevation: 0,
        title: Text(
          'TIMELINE',
          style: TextStyle(
            fontSize: 25,
          ),
        ),

        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert),
            iconSize: 25,
          ),
        ],
      ),

      body: Column(
        children: <Widget> [
          Container(
            height: 200,
            //color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: favorite.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF4DB6AC),
                   /* boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0,2.0),
                        blurRadius: 6.0,
                      ),

                    ], */
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 3.0,
                            //color: Color(0xFF4DB6AC),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(
                                favorite[index].imageUrl),
                                fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        height: 70,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(favorite[index].name,
                            style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white.withOpacity(0.5),
                        height: 10.0,
                        indent: 5.0,
                        endIndent: 5.0,
                      ),

                    ],
                  ),

                );

              },
            ),
          ),
          _buildPost(0),
        ],
      ),
    );
  }
}

_buildPost(int index){
  return Container(
    margin: EdgeInsets.all(15),
    height: 500,
    //color: Colors.white,
    child: Column(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(
                  width: 3.0,
                  //color: Color(0xFF4DB6AC),
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              child: Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  image: DecorationImage(
                    image: AssetImage(
                        posts[index].user.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    posts[index].user.name,
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
            ),
            Text(
                posts[index].timePosted,
              style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 16,

              ),
            ),
          ],
        ),

        Container(
          margin: EdgeInsets.only(top: 10),
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(posts[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Container(
          //color: Colors.white54,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                        Icons.mode_comment,
                      color: Colors.white54,
                      size: 30,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      posts[index].comment,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                        '|',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(
                      Icons.share,
                      color: Colors.white54,
                      size: 30,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      posts[index].shared,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      posts[index].link,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white54,
                      size: 30,
                    ),


                  ],
                ),
              ],
            ),

          ),
        ),
        Container(
          height: 70,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              posts[index].description,
            ),
          ),

        ),
      ],
    ),
  );
}