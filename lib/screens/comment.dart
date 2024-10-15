import 'package:flutter/material.dart';
import 'package:comment_box/comment/comment.dart';

class Comment extends StatefulWidget {
  const Comment({ Key? key }) : super(key: key);
 
  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
 
  @override
  Widget build(BuildContext context) {
     double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg'),
                              ),
                               SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Adom Shafi",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "20 min ago",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12
                                                    ),
                                                    
                                              ),
                                              ElevatedButton(onPressed: (){}, 
                                              child: Icon(Icons.more_horiz,color: Colors.white,),
                                               style: ElevatedButton.styleFrom(
                                               shape: CircleBorder(),
                                               primary: Colors.black, // <-- Button color
                                               onPrimary: Colors.red, ))
                                            ],
                                          ),
                                            
                                         
                                        ],
                                      ),
                                    ),
                                    
                            ]),
                            
                ),
                            Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width * 0.8,
                                        // color: Colors.red,
                                        child: Text(
                                            "This is very useful blog post, I love this!",
                                            textAlign: TextAlign.left,
                                       
                                            style: TextStyle(
                                                fontSize: 13,
                                                
                                                color: Colors.grey,
                                                letterSpacing: 0.4),
                                          ),
                                          
                                        ),
                                    
                                    ],
                                  ),
                                ),
                                 Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width * 0.8,
                                        // color: Colors.red,
                                        child: Text(
                                            "Thank You @mansur for this kind of post 😍",
                                            textAlign: TextAlign.left,
                                       
                                            style: TextStyle(
                                                fontSize: 13,
                                                
                                                color: Colors.grey,
                                                letterSpacing: 0.4),
                                          ),
                                          
                                        ),
                                    
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.favorite_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('126')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.comment_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('10 Reply')
                                                ],
                                              ),
                                              
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child:Text("Reply"),
                                              style: ElevatedButton.styleFrom(
                                               shape: CircleBorder(),
                                               primary: Colors.black, // <-- Button color
                                               onPrimary: Colors.white, )
                                                  
                                              )
                                        ]),
                                  ),
                                  Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg'),
                              ),
                               SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Mansurul Haque",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "1 day ago",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12
                                                    ),
                                                    
                                              ),
                                              ElevatedButton(onPressed: (){}, 
                                              child: Icon(Icons.more_horiz,color: Colors.white,),
                                               style: ElevatedButton.styleFrom(
                                               shape: CircleBorder(),
                                               primary: Colors.black, // <-- Button color
                                               onPrimary: Colors.red, ))
                                            ],
                                          ),
                                            
                                         
                                        ],
                                      ),
                                    ),
                                    
                            ]),
                            
                ),
                            Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width * 0.8,
                                        // color: Colors.red,
                                        child: Text(
                                            "Thank You @adom_shafi for this kind comments ! Its Mean a lot ❤️",
                                            textAlign: TextAlign.left,
                                       
                                            style: TextStyle(
                                                fontSize: 13,
                                                
                                                color: Colors.grey,
                                                letterSpacing: 0.4),
                                          ),
                                          
                                        ),
                                    
                                    ],
                                  ),
                                ),
                                
                              ],
                            ),
                            Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.favorite_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('126')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.comment_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('10 Reply')
                                                ],
                                              ),
                                              
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child:Text("Reply"),
                                              style: ElevatedButton.styleFrom(
                                               shape: CircleBorder(),
                                               primary: Colors.black, // <-- Button color
                                               onPrimary: Colors.white, )
                                                  
                                              )
                                        ]),
                                  ),
                                   ElevatedButton(
                                              onPressed: () {},
                                              child:
                                              Text('See All Reply',),
                                            
                                                style: ElevatedButton.styleFrom(
                                               shape: CircleBorder(),
                                               primary: Colors.black, // <-- Button color
                                               onPrimary: Colors.green, )
                                                  ,),
                                                  Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg'),
                              ),
                               SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Sami Ahmed",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "1 day ago",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12
                                                    ),
                                                    
                                              ),
                                              ElevatedButton(onPressed: (){}, 
                                              child: Icon(Icons.more_horiz,color: Colors.white,),
                                               style: ElevatedButton.styleFrom(
                                               shape: CircleBorder(),
                                               primary: Colors.black, // <-- Button color
                                               onPrimary: Colors.red, ))
                                            ],
                                          ),
                                            
                                         
                                        ],
                                      ),
                                    ),
                                    
                            ]),
                            
                ),
                            Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width * 0.8,
                                        // color: Colors.red,
                                        child: Text(
                                            "I already read about UX and its makes me improve my design work. Now I can research more about UX the UI. Also this post really very helpful to me. I just learn something new about UX 😁👌",
                                            textAlign: TextAlign.left,
                                       
                                            style: TextStyle(
                                                fontSize: 13,
                                                
                                                color: Colors.grey,
                                                letterSpacing: 0.4),
                                          ),
                                          
                                        ),
                                    
                                    ],
                                  ),
                                ),
                                
                              ],
                            ),
                            Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.favorite_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('126')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.comment_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('10 Reply')
                                                ],
                                              ),
                                              
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child:Text("Reply"),
                                              style: ElevatedButton.styleFrom(
                                               shape: CircleBorder(),
                                               primary: Colors.black, // <-- Button color
                                               onPrimary: Colors.white, )
                                                  
                                              ),
                                        ]),
                                  ),
                                  
                                
                                               
                    ]),
                  
                    ),
                    
                                              
                                              )
                                              ),
    );
                                  
                           
  }
}