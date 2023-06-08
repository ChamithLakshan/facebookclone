import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 58.0,
                //color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: IconButton(icon: Icon(Icons.person_pin,size: 35.0,),
                          onPressed: (){},),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 8.0),
                          child: OutlinedButton(onPressed:(){},
                              style:
                                OutlinedButton.styleFrom(
                                side: BorderSide(width: 1.0, color: Colors.black),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                              ),
                              child: const Text("What's on your mind?                                  ",
                              style: TextStyle(color: Colors.black),),

                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Divider(color: Colors.black,),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40.0,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/3,
                          height: 40.0,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget> [
                                  Icon(Icons.videocam,color: Colors.red,),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Live')
                                  ],
                                ),
                              )
                            ],
                          ),

                        )
                      ],

                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/3,
                          height: 40.0,

                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget> [
                                  Icon(Icons.photo_library_outlined,color: Colors.green,),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Photo')
                                  ],
                                ),
                              )
                            ],
                          ),

                        )
                      ],

                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/3,
                          height: 40.0,

                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget> [
                                  Icon(Icons.location_on,color: Colors.red,),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Check in')
                                  ],
                                ),
                              )
                            ],
                          ),


                        )
                      ],

                    )
                  ],
                ),
              )

            ],
          ),

          //2nd layer Close
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width ,
                height: 10.0,
                color: Colors.black26,
              )
            ],
          ),
          //3rd layer close

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:<Widget> [
                MyStory(myStory: 'images/story4.jpg'),
                FriendStory(friendStory:'images/story2.jpg',proName: 'A',proPic: 'images/propic1.jpg' ),
                FriendStory(friendStory:'images/story1.jpg',proName: 'B',proPic: 'images/propic3.jpg'),
                FriendStory(friendStory:'images/story3.jpg',proName: 'C',proPic: 'images/propic4.jpg'),
                FriendStory(friendStory:'images/story5.jpg',proName: 'D',proPic: 'images/propic5.jpg' ),
              ],

            ),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width ,
                height: 10.0,
                color: Colors.black26,
              )
            ],
          ),
      //Post Layer
          FriendPost(
              proPic: 'images/propic1.jpg',
              proName: 'Sahan Pasindu',
              dateAndLocation: 'Yesterday at 11.05 AM',
              post: 'images/post1.jpg',
            caption: 'sad but truth',
            comments: '345',
            likes: '1k',

          ),
          FriendPost(
            proPic: 'images/propic5.jpg',
            proName: 'Dilshan Samarakoon',
            dateAndLocation: '3h ago. Kelaniya',
            post: 'images/post3.jpg',
            caption: 'Shalalalaaaaa',
            comments: '8',
            likes: '14',

          ),
          FriendPost(
            proPic: 'images/propic3.jpg',
            proName: 'Isada Ruwan',
            dateAndLocation: '2min ago',
            post: 'images/post2.jpg',
            caption: 'dn saneepai',
            comments: '1',
            likes: '5',

          ),
          FriendPost(
            proPic: 'images/propic4.jpg',
            proName: 'Nicholas Sadeep',
            dateAndLocation: 'Yesterday at 6.30 AM',
            post: 'images/post5.jpg',
            caption: 'GPA left',
            comments: '18',
            likes: '21',

          ),


        ],
      ),
    );
  }
}

Widget FriendPost({proPic,proName,dateAndLocation,post,caption,likes,comments}){
  return Padding(
    padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
    child: Row(
      children: <Widget>[
        Container(
          width: 392.3,
          height: 530.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 392.3,
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,right: 8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              child: Container(
                               width: 40.0,
                               height: 40.0,
                               child: Container(
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30.0),
                                   border: Border.all(
                                     color: Colors.brown,
                                     style: BorderStyle.solid,
                                   ),
                                   image: DecorationImage(
                                       image: AssetImage(proPic),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 240.0,
                                height: 20.0,
                                child: Text(proName,style: TextStyle(
                                  fontSize:17.0,
                                  fontWeight: FontWeight.bold,
                                ),),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 240.0,
                                height: 20.0,
                                child: Text(dateAndLocation,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 89.0,
                          height: 50.0,
                          child: IconButton(
                            icon: Icon(Icons.more_horiz),
                            onPressed: (){},
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 392.7,
                height: 400.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 10),
                      child: Container(
                        width: 392.7,
                        height: 20.0,
                        child: Text(caption),
                      ),
                    ),
                    Container(
                      width: 392.7,
                      height: 370.0,
                      child: Image(
                        image: AssetImage(post),
                        fit: BoxFit.fill ,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 392.7,
                height: 30.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                          child: Container(
                            width: 70.0,
                            height: 20.0,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.thumb_up,size: 17.0,color: Colors.blue,),
                                Icon(Icons.favorite,size: 17.0,color: Colors.red,),
                                Icon(Icons.emoji_emotions_outlined,size: 17.0,color: Colors.yellow,),
                                Text(likes),
                              ],
                            ) ,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 162),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 150.0,
                            height: 30.0,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(comments +' comments'),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 392.7,
                height: 30.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: (392.7)/3,
                      height: 30.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.thumb_up,size: 16.0,
                              color: Colors.blue,),
                          ),
                          Text('Like',style: TextStyle(
                            fontSize: 12.0,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      width: (390)/3,
                      height: 30.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(onPressed: (){},
                            icon: Icon(Icons.comment,size: 20.0,
                              color: Colors.black54,),
                          ),
                          Text('Comment',style: TextStyle(
                            fontSize: 12.0,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      width: (392.7)/3,
                      height: 30.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(onPressed: (){},
                            icon: Icon(Icons.share,size: 20.0,
                              color: Colors.black54,),
                          ),
                          Text('Share',style: TextStyle(
                            fontSize: 12.0,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
                child: Container(
                  width: 392.7,
                  height: 5.0,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

//MyStory
Widget MyStory({myStory}){
  return Padding(
    padding: const EdgeInsets.only(left: 5.0,top: 5.0, bottom: 5.0,),
    child: Container(
      width:130.0,
      height:150,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(image: AssetImage(
            myStory
          ),
            fit: BoxFit.cover,
          ),
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){},
                icon: const Icon(
                  Icons.add_circle,
                  color: Colors.white,
                size: 40.0,),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Create story',
                style: TextStyle(
                  color: Colors.white,
                ),)
            ],
          )



        ],
      ),

    ),
  );
}



//Friend Story
Widget FriendStory({friendStory,proName,proPic}){
  return Padding(
    padding: const EdgeInsets.only(left: 5.0,top: 5.0, bottom: 5.0,),
    child: Container(
      width:130.0,
      height:150,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(image: AssetImage(
              friendStory
          ),
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 40.0,
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                        color: Colors.blue,
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                      image: DecorationImage(
                          image: AssetImage(proPic),
                        fit: BoxFit.cover,
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // children: [
            //   IconButton(onPressed: (){},
            //     icon: const Icon(
            //       Icons.add_circle,
            //       color: Colors.white,
            //       size: 40.0,),
            //   ),
            // ],
          ),
           Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(proName,
                style: TextStyle(
                  color: Colors.white,
                ),)
            ],
          )



        ],
      ),

    ),
  );
}